//
//  Copyright 2023 Chatura Dilan Perera. All rights reserved.
//  Use of this source code is governed by license that can be
//  found in the LICENSE file.
//

/// Build-time code generator for Riverpod repository providers.
library;

import 'package:build/build.dart';
import 'package:riverpod_repo/src/riverpod_repo_generator.dart';
import 'package:source_gen/source_gen.dart';

export 'annotations.dart';

/// Creates the `riverpod_repo` builder that emits `*.repo.g.dart` files.
Builder generateRiverpodRepo(BuilderOptions options) =>
    LibraryBuilder(RiverPodRepoGenerator(), generatedExtension: '.repo.g.dart');
