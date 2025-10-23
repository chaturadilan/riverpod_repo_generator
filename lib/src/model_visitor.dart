//
//  Copyright 2023 Chatura Dilan Perera. All rights reserved.
//  Use of this source code is governed by license that can be
//  found in the LICENSE file.
//  Created: 2023-03-21T00:09:52.540Z
//

// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/visitor2.dart';

/// ModelVisitor class of the Riverpod Repo
class ModelVisitor extends RecursiveElementVisitor2<void> {
  String className = '';
  Map<String, dynamic> fields = {};
  Map<String, dynamic> methods = {};

  /// Create the visit constructor element
  @override
  void visitConstructorElement(ConstructorElement2 element) {
    final returnType = element.returnType.toString();
    className = returnType.replaceFirst('*', '');
    super.visitConstructorElement(element);
  }

  /// Create the visit field element
  @override
  void visitFieldElement(FieldElement2 element) {
    final fieldName = element.name3;
    if (fieldName != null) {
      fields[fieldName] = element.type.toString().replaceFirst('*', '');
    }
    super.visitFieldElement(element);
  }

  /// Create the visit method element
  @override
  void visitMethodElement(MethodElement2 element) {
    final methodName = element.name3;
    if (methodName != null) {
      methods[methodName] = {
        'comments': element.documentationComment,
        'element': element,
        "returnType": element.returnType,
        "parameters": element.formalParameters
      };
    }
    super.visitMethodElement(element);
  }
}
