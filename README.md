# Repo Generator with Riverpod

[![pub package](https://img.shields.io/pub/v/riverpod_repo.svg)](https://pub.dev/packages/riverpod_repo)

A build-time code generator that creates Riverpod providers from repository
interfaces. Each repository query method becomes a `FutureProvider`,
`StreamProvider`, or `Provider` (with optional `.family` and `.autoDispose`).

## Getting started

Add `riverpod_repo` to `dev_dependencies` and enable the builder in your app's
`build.yaml` (or rely on `auto_apply: dependents`).

```yaml
dev_dependencies:
  riverpod_repo: ^5.1.0
  build_runner: ^2.15.0
  riverpod_annotation: ^4.0.2
  riverpod_generator: ^4.0.3
```

### Setup

1. Define an abstract repository interface.
2. Annotate it with `@riverpodRepo` (or `@RiverpodRepoAnnotation(...)`).
3. Add a `part` for your hand-written `@Riverpod` provider (`*.g.dart`).
4. Run `dart run build_runner build`.
5. Import the generated `*.repo.g.dart` file where you need the providers.

```dart
part 'data_repo.g.dart';

@Riverpod(keepAlive: true)
RepoData repoData(Ref ref) => RepoDataImpl();

@riverpodRepo
abstract class RepoData {
  Future<List<Book>> getBooks({String search = ''});
  Future<void> deleteBook(String id); // mutations are skipped
}
```

The generator writes a standalone `data_repo.repo.g.dart` library. Starting
with **5.0.0**, repository providers use the public Riverpod API directly and
are **not** processed by `riverpod_generator`.

## Mutations vs queries (5.1.0)

Providers are generated only for **reads**. The following are skipped:

- `Future<void>` / `Stream<void>` return types
- Methods annotated with `@repoMutation` or `@ignoreRepo`
- Methods whose names start with `create`, `update`, `delete`, `set`, `save`,
  `add`, `remove`, `put`, or `post`

Force generation for edge cases with `@repoQuery` or
`@RepoQueryAnnotation(...)`.

After a mutation, refresh cached reads:

```dart
invalidateRepoDataProviders(ref);
```

## Keep-alive vs auto-dispose (5.1.0)

```dart
@RiverpodRepoAnnotation(keepAlive: true)
abstract class RepoData { ... }

@RepoQueryAnnotation(keepAlive: false) // override one method
Future<List<int>> getTopGenres();
```

## Provider naming and usage

Generated providers are prefixed with the repository class name in camelCase:

```dart
// No parameters
ref.watch(repoDataGetTopGenresProvider);

// Single positional argument → .family
ref.watch(repoDataGetCountryProvider('US'));

// Named / multiple arguments → record family
ref.watch(repoDataGetBooksProvider((search: 'dart', categoryId: '1')));
```

Return types map to provider kinds: `Future<T>` → `FutureProvider`,
`Stream<T>` → `StreamProvider`, otherwise `Provider`.

## Important

1. Provider names use the repository **class** name, not the provider function
   name — but the `@Riverpod` function must still return an instance of that
   class (e.g. `repoData` → `RepoData`).
2. The `@Riverpod` provider name must match the repository class in camelCase
   (`RepoData` → `repoDataProvider`).

## Example

See the [`example/`](example/) directory in this repository.

## License

MIT — see [LICENSE](LICENSE).

## Support

Questions: [dilan@dilan.me](mailto:dilan@dilan.me)
