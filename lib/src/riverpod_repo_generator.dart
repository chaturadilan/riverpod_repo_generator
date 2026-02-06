//
//  Copyright 2023 Chatura Dilan Perera. All rights reserved.
//  Use of this source code is governed by license that can be
//  found in the LICENSE file.
//  Created: 2023-03-21T00:12:55.095Z
//

import 'dart:core';

import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';

import '../annotations.dart';
import 'model_visitor.dart';

/// RiverPodRepoGenerator class of the Riverpod Repo
class RiverPodRepoGenerator
    extends GeneratorForAnnotation<RiverpodRepoAnnotation> {
  /// Generate the annotated element
  @override
  Future<String> generateForAnnotatedElement(
    Element2 element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    final visitor = ModelVisitor();
    element.visitChildren2(visitor);

    // Collect all types used in method signatures
    final Set<String> requiredImports = {};

    for (var methodEntry in visitor.methods.values) {
      final MethodElement2 methodElement = methodEntry["element"];

      // Add imports for return type
      final returnType = methodElement.returnType;
      _collectTypeImports(returnType, requiredImports, element);

      // Add imports for parameters
      final List<FormalParameterElement> parameters = methodEntry["parameters"];
      for (var param in parameters) {
        final paramType = param.type;
        _collectTypeImports(paramType, requiredImports, element);
      }
    }

    final buffer = StringBuffer();

    // Get the source file name for the part directive
    final sourceFile = buildStep.inputId.path
        .split('/')
        .last
        .replaceAll('.dart', '');

    // Write imports and part directive for standalone file
    buffer.writeln("// GENERATED CODE - DO NOT MODIFY BY HAND");
    buffer.writeln();
    buffer.writeln(
      "import 'package:riverpod_annotation/riverpod_annotation.dart';",
    );
    buffer.writeln("import '$sourceFile.dart';");

    // Only add imports that are actually used
    for (var import in requiredImports) {
      buffer.writeln("import '$import';");
    }

    // Export the original file
    buffer.writeln();
    buffer.writeln("export '$sourceFile.dart';");
    buffer.writeln();
    buffer.writeln("part '$sourceFile.repo.g.dart';");
    buffer.writeln();

    String className = visitor.className;
    for (int i = 0; i < visitor.methods.length; i++) {
      String methodNameCamelCase = visitor.methods.keys.elementAt(i).camelCase;

      List<FormalParameterElement> parameters = visitor.methods.values
          .elementAt(i)["parameters"];
      String parameterString = '';

      for (var parameter in parameters) {
        final paramName = parameter.name3;
        if (paramName != null) {
          if (parameter.isRequired) {
            parameterString += "$paramName,";
          } else if (parameter.isNamed) {
            parameterString += "$paramName: $paramName,";
          }
        }
      }

      MethodElement2 element = visitor.methods.values.elementAt(i)["element"];
      final elementName = element.name3 ?? '';
      String methodName = "${className.camelCase}${elementName.pascalCase}";
      String signture = element.toString().replaceFirst(
        "$elementName(",
        "${methodName.camelCase}(Ref ref,",
      );

      // write the class and method
      buffer.writeln(
        "/// Repositroy: ${className.pascalCase}, Method: $methodNameCamelCase ",
      );
      buffer.writeln("///");

      //write the comments
      var comments = visitor.methods.values.elementAt(i)["comments"];
      if (comments != null) {
        buffer.writeln(comments);
      }

      // writes the riverpod annotation
      buffer.writeln("@riverpod");
      buffer.writeln(
        "$signture {return ref.watch(${className.camelCase}Provider).$methodNameCamelCase($parameterString);}",
      );
    }

    return buffer.toString();
  }

  /// Recursively collect imports needed for a type
  void _collectTypeImports(
    DartType type,
    Set<String> imports,
    Element2 sourceElement,
  ) {
    // Handle generic types (e.g., List<Student>, Map<String, dynamic>) FIRST
    // This ensures we process type arguments even if the container type (List, etc.) is from dart:core
    if (type is ParameterizedType) {
      for (var typeArg in type.typeArguments) {
        _collectTypeImports(typeArg, imports, sourceElement);
      }
    }

    // Now check if we need to import the type itself
    final typeElement = type.element3;
    if (typeElement == null) return;

    final library = typeElement.library2;
    if (library == null) return;

    final librarySource = library.uri.toString();

    // Skip if it's from dart:core or the same library
    if (librarySource.startsWith('dart:core') ||
        library == sourceElement.library2) {
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
