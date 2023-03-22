library riverpod_repo;

import 'package:build/build.dart';
import 'package:riverpod_repo/src/riverpod_repo_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder generateRiverpodRepo(BuilderOptions options) => PartBuilder(
      [RiverPodRepoGenerator()],
      '.repo.g.dart',
    );
