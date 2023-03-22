//
//  Copyright 2023 Chatura Dilan Perera. All rights reserved.
//  Use of this source code is governed by license that can be
//  found in the LICENSE file.
//  Created: 2023-03-21T00:12:55.095Z
//

import 'dart:core';

// ignore_for_file: implementation_imports, depend_on_referenced_packages

import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';

import '../annotations.dart';
import 'model_visitor.dart';

class RiverPodRepoGenerator
    extends GeneratorForAnnotation<RiverpodRepoAnnotation> {
  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final visitor = ModelVisitor();
    element.visitChildren(visitor);

    final buffer = StringBuffer();

    String className = visitor.className;
    for (int i = 0; i < visitor.methods.length; i++) {
      String methodNameCamelCase = visitor.methods.keys.elementAt(i).camelCase;

      List<ParameterElement> parameters =
          visitor.methods.values.elementAt(i)["parameters"];
      String parameterString = '';

      for (var parameter in parameters) {
        if (parameter.isRequired) {
          parameterString += "${parameter.name},";
        } else if (parameter.isNamed) {
          parameterString += "${parameter.name}: ${parameter.name},";
        }
      }

      MethodElement element = visitor.methods.values.elementAt(i)["element"];
      String methodName = "${className.camelCase}${element.name.pascalCase}";
      String signture = element.declaration.toString().replaceFirst(
          "${element.name}(",
          "${methodName.camelCase}(${methodName.pascalCase}Ref ref,");
      buffer.writeln(
        "@riverpod",
      );
      buffer.writeln(
        "$signture {return ref.watch(${className.camelCase}Provider).$methodNameCamelCase($parameterString);}",
      );
    }

    return buffer.toString();
  }
}
