//
//  Copyright 2023 Chatura Dilan Perera. All rights reserved.
//  Use of this source code is governed by license that can be
//  found in the LICENSE file.
//  Created: 2023-03-21T00:12:55.095Z
//

import 'dart:core';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';

import '../annotations.dart';
import 'model_visitor.dart';

/// The kind of Riverpod provider that maps to a repository method.
enum _ProviderKind { future, stream, sync }

/// RiverPodRepoGenerator class of the Riverpod Repo
///
/// Generates a single, self-contained Dart library that exposes one Riverpod
/// provider per repository method. The output relies solely on the public
/// Riverpod API (`FutureProvider`, `StreamProvider`, `Provider` and their
/// `.autoDispose`/`.family` builders), so no secondary `riverpod_generator`
/// step (and therefore no extra `*.g.dart` part file) is required.
class RiverPodRepoGenerator
    extends GeneratorForAnnotation<RiverpodRepoAnnotation> {
  /// Generate the annotated element
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    final visitor = ModelVisitor();
    element.visitChildren(visitor);

    // Collect all types used in method signatures so the generated library
    // can import the models it references.
    final Set<String> requiredImports = {};

    for (var methodEntry in visitor.methods.values) {
      final MethodElement methodElement = methodEntry["element"];

      _collectTypeImports(methodElement.returnType, requiredImports, element);

      final List<FormalParameterElement> parameters = methodEntry["parameters"];
      for (var param in parameters) {
        _collectTypeImports(param.type, requiredImports, element);
      }
    }

    final buffer = StringBuffer();

    final sourceFile = buildStep.inputId.path
        .split('/')
        .last
        .replaceAll('.dart', '');

    buffer.writeln("// ignore_for_file: type=lint, type=warning");
    buffer.writeln();
    buffer.writeln("import 'package:riverpod/riverpod.dart';");
    buffer.writeln("import '$sourceFile.dart';");

    for (var import in requiredImports) {
      buffer.writeln("import '$import';");
    }

    buffer.writeln();
    buffer.writeln("export '$sourceFile.dart';");
    buffer.writeln();

    final className = visitor.className;
    final repoProvider = "${className.camelCase}Provider";

    for (var methodEntry in visitor.methods.values) {
      final MethodElement methodElement = methodEntry["element"];
      final methodName = methodElement.name ?? '';
      if (methodName.isEmpty) continue;

      final providerName = "${className.camelCase}${methodName.pascalCase}";

      final List<FormalParameterElement> parameters = methodEntry["parameters"];
      final positional = parameters
          .where((p) => p.isPositional)
          .toList(growable: false);
      final named = parameters.where((p) => p.isNamed).toList(growable: false);

      final kind = _providerKind(methodElement.returnType);
      final valueType = _valueType(methodElement.returnType, kind);
      final providerBase = switch (kind) {
        _ProviderKind.future => 'FutureProvider',
        _ProviderKind.stream => 'StreamProvider',
        _ProviderKind.sync => 'Provider',
      };

      // Documentation header for the generated provider.
      buffer.writeln(
        "/// Repository: ${className.pascalCase}, Method: ${methodName.camelCase}",
      );
      buffer.writeln("///");
      final comments = methodEntry["comments"];
      if (comments != null) {
        buffer.writeln(comments);
      }

      if (parameters.isEmpty) {
        buffer.writeln(
          "final ${providerName}Provider = $providerBase.autoDispose<$valueType>((ref) {",
        );
        buffer.writeln("  return ref.watch($repoProvider).$methodName();");
        buffer.writeln("});");
      } else if (positional.length == 1 && named.isEmpty) {
        final param = positional.first;
        final argName = param.name ?? 'arg';
        final argType = param.type.getDisplayString();
        buffer.writeln(
          "final ${providerName}Provider = $providerBase.autoDispose"
          ".family<$valueType, $argType>((ref, $argName) {",
        );
        buffer.writeln(
          "  return ref.watch($repoProvider).$methodName($argName);",
        );
        buffer.writeln("});");
      } else {
        final argType = _recordType(positional, named);
        final invocation = _recordInvocation(positional, named);
        buffer.writeln(
          "final ${providerName}Provider = $providerBase.autoDispose"
          ".family<$valueType, $argType>((ref, arg) {",
        );
        buffer.writeln(
          "  return ref.watch($repoProvider).$methodName($invocation);",
        );
        buffer.writeln("});");
      }

      buffer.writeln();
    }

    return buffer.toString();
  }

  /// Determine which provider type maps to the given return [type].
  _ProviderKind _providerKind(DartType type) {
    if (type.isDartAsyncFuture || type.isDartAsyncFutureOr) {
      return _ProviderKind.future;
    }
    if (type.isDartAsyncStream) {
      return _ProviderKind.stream;
    }
    return _ProviderKind.sync;
  }

  /// The value exposed by the provider (unwrapping `Future`/`Stream`).
  String _valueType(DartType type, _ProviderKind kind) {
    if (kind != _ProviderKind.sync &&
        type is ParameterizedType &&
        type.typeArguments.isNotEmpty) {
      return type.typeArguments.first.getDisplayString();
    }
    return type.getDisplayString();
  }

  /// Build the Dart record type used as the family argument.
  String _recordType(
    List<FormalParameterElement> positional,
    List<FormalParameterElement> named,
  ) {
    final positionalTypes = positional
        .map((p) => p.type.getDisplayString())
        .join(', ');
    final namedFields = named
        .map((p) => '${p.type.getDisplayString()} ${p.name}')
        .join(', ');

    if (positional.isNotEmpty && named.isNotEmpty) {
      return '($positionalTypes, {$namedFields})';
    }
    if (positional.isNotEmpty) {
      return '($positionalTypes)';
    }
    return '({$namedFields})';
  }

  /// Build the argument list that forwards a record to the repository method.
  String _recordInvocation(
    List<FormalParameterElement> positional,
    List<FormalParameterElement> named,
  ) {
    final parts = <String>[];
    for (var i = 0; i < positional.length; i++) {
      parts.add('arg.\$${i + 1}');
    }
    for (final p in named) {
      parts.add('${p.name}: arg.${p.name}');
    }
    return parts.join(', ');
  }

  /// Recursively collect imports needed for a type
  void _collectTypeImports(
    DartType type,
    Set<String> imports,
    Element sourceElement,
  ) {
    // Handle generic types (e.g., List<Student>, Map<String, dynamic>) FIRST
    // This ensures we process type arguments even if the container type (List, etc.) is from dart:core
    if (type is ParameterizedType) {
      for (var typeArg in type.typeArguments) {
        _collectTypeImports(typeArg, imports, sourceElement);
      }
    }

    // Now check if we need to import the type itself
    final typeElement = type.element;
    if (typeElement == null) return;

    final library = typeElement.library;
    if (library == null) return;

    final librarySource = library.uri.toString();

    // Skip if it's from dart:core or the same library
    if (librarySource.startsWith('dart:core') ||
        library == sourceElement.library) {
      return;
    }

    // Handle asset: URIs (local files in the same package)
    if (librarySource.startsWith('asset:')) {
      // Extract just the file name from asset:package_name/path/to/file.dart
      final parts = librarySource.split('/');
      if (parts.length > 1) {
        imports.add(parts.last);
      }
      return;
    }

    // Add package: imports
    if (librarySource.startsWith('package:')) {
      imports.add(librarySource);
    }
  }
}
