import 'package:riverpod/riverpod.dart';

import 'example.dart';

void main() {
  final container = ProviderContainer();
  // Test the base provider
  final repo = container.read(repoDataProvider);
  print('Repository instance: ${repo.runtimeType}');

  // Test that we can access the generated functions
  // Note: In riverpod 3.x, you may need to use ref.read() inside a provider
}
