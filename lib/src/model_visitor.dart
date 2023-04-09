//
//  Copyright 2023 Chatura Dilan Perera. All rights reserved.
//  Use of this source code is governed by license that can be
//  found in the LICENSE file.
//  Created: 2023-03-21T00:09:52.540Z
//

// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

/// ModelVisitor class of the Riverpod Repo
class ModelVisitor extends SimpleElementVisitor<void> {
  String className = '';
  Map<String, dynamic> fields = {};
  Map<String, dynamic> methods = {};

  /// Create the visit constructor element
  @override
  void visitConstructorElement(ConstructorElement element) {
    final returnType = element.returnType.toString();
    className = returnType.replaceFirst('*', '');
  }

  /// Create the visit field element
  @override
  void visitFieldElement(FieldElement element) {
    fields[element.name] = element.type.toString().replaceFirst('*', '');
  }

  /// Create the visit method element
  @override
  void visitMethodElement(MethodElement element) {
    methods[element.name] = {
      'comments': element.documentationComment,
      'element': element,
      "returnType": element.returnType,
      "parameters": element.parameters
    };
  }
}
