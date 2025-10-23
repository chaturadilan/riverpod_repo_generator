import 'package:build/build.dart';
import 'package:riverpod_repo/src/riverpod_repo_generator.dart';
import 'package:source_gen/source_gen.dart';

/// Generates the Riverpod providers based on the repository.
Builder generateRiverpodRepo(BuilderOptions options) => LibraryBuilder(
      RiverPodRepoGenerator(),
      generatedExtension: '.repo.dart',
    );
