
import 'package:riverpod/riverpod.dart';

import 'example.dart';

void main() {
  final container = ProviderContainer();
  container.read(repoDataGetBooksProvider());
}
