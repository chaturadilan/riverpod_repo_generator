import 'package:riverpod/riverpod.dart';

import 'example.dart';
import 'example.repo.dart';

void main() {
  final container = ProviderContainer();

  // Test the base provider
  final repo = container.read(repoDataProvider);
  print('Repository instance: ${repo.runtimeType}');

  // Test generated provider
  final booksProvider =
      repoDataGetBooksProvider(search: 'flutter', categoryId: '1');
  print('Generated provider: ${booksProvider.runtimeType}');
}
