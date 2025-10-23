//
//  Copyright 2023 Chatura Dilan Perera. All rights reserved.
//  Use of this source code is governed by license that can be
//  found in the LICENSE file.
//  Created: 2023-03-21T00:12:55.095Z
//

import 'dart:core';

import 'package:analyzer/dart/element/element2.dart';
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
  String generateForAnnotatedElement(
    Element2 element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final visitor = ModelVisitor();
    element.visitChildren2(visitor);

    final buffer = StringBuffer();

    // Get the source file name for the part directive
    final sourceFile =
        buildStep.inputId.path.split('/').last.replaceAll('.dart', '');

    // Write imports and part directive for standalone file
    buffer.writeln("// GENERATED CODE - DO NOT MODIFY BY HAND");
    buffer.writeln();
    buffer.writeln(
        "import 'package:riverpod_annotation/riverpod_annotation.dart';");
    buffer.writeln("import '$sourceFile.dart';");
    buffer.writeln();
    buffer.writeln("part '$sourceFile.repo.g.dart';");
    buffer.writeln();

    String className = visitor.className;
    for (int i = 0; i < visitor.methods.length; i++) {
      String methodNameCamelCase = visitor.methods.keys.elementAt(i).camelCase;

      List<FormalParameterElement> parameters =
          visitor.methods.values.elementAt(i)["parameters"];
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
}
