## 1.0.0

* Initial Release

## 1.0.1

* Fixing the Dependancies

## 1.0.2

* Added Repo URL


## 1.0.3

* Added example

## 1.0.4

* Added doc comments support

## 1.0.5

* Fixed the platform support

## 1.0.6

* Added repo and method

## 1.0.7

* Fixed bug related to method

## 1.0.8

* Fixed bug related doc comment

## 1.0.9

* Fixed the README

## 1.0.10

* Fixed the README repository pattern

## 1.0.11

* Fixed the README codes

## 1.0.12

* Fixed the issue with versions

## 1.0.13

* Fixed the issue with dependencies versions

## 1.0.14

* Fixed the issue with dependencies versions

## 2.0.0

* Rename .repo.g.dart to .repo.dart

## 2.0.1

* Fixed the issue with ordering

## 2.0.2

* Readme changes

## 3.1.0

* Update Dependancies

## 3.2.0

* Update Dependancies

## 3.3.0

* Update Dependancies


## 4.3.0

* Fxied bugs related to reverpod genertor

## 4.4.0

* Fxied bugs

## 4.5.0

* Fxied bug related to genrator

## 4.6.0

* Fxied bug related to generator

## 4.7.0

* Upgraded to latest versions

## 4.8.0

* Upgraded dependencies to the latest versions (analyzer 9, riverpod 3.2, source_gen 4.2, build 4.0.6, build_runner 2.15, riverpod_generator 4.0.3)
* Regenerated example output and added a `getCountry` method to demonstrate custom model import generation
* Cleaned up the example to pass static analysis with no issues

## 5.1.2

* Raise the Dart SDK constraint to `^3.12.0`.
* Upgrade dependencies to latest compatible versions (`analyzer` 13+/14,
  `build` 4.0.10, `source_gen` 4.2.4, `riverpod` 3.4.2,
  `riverpod_annotation` 4.0.6, `riverpod_generator` 4.0.8, `build_runner` 2.16).
* Regenerate the example providers against the upgraded toolchain.

## 5.1.1

* Expand README with full setup guide, generated output samples, annotations
  reference, mutation workflow, migration notes, and `build.yaml` configuration.
* Add `example/README.md` documenting the sample repository and generated providers.

## 5.1.0

* Skip provider generation for repository mutations: `Future<void>` /
  `Stream<void>` returns, methods annotated with `@repoMutation` / `@ignoreRepo`,
  and methods whose names start with common mutation prefixes (`create`,
  `update`, `delete`, etc.). Use `@repoQuery` to force generation when a
  method name looks like a mutation but is still a read.
* Add `@RiverpodRepoAnnotation(keepAlive: true)` and `@repoQuery(keepAlive: …)` to
  control whether generated providers use `.autoDispose` (default) or stay
  alive.
* Generate `invalidate{RepoName}Providers(Ref ref)` to invalidate every
  query provider for a repository after a mutation.
* Drop the Flutter SDK dependency so the package is a pure Dart build tool;
  export annotations from `package:riverpod_repo/riverpod_repo.dart`.

## 5.0.0

* **Breaking:** The generator now emits a single self-contained `*.repo.g.dart`
  library instead of the previous `*.repo.dart` + `*.repo.g.dart` pair.
* **Breaking:** Repository providers are now built on the public Riverpod API
  (`FutureProvider`/`StreamProvider`/`Provider` with `.autoDispose`/`.family`),
  so they no longer depend on `riverpod_generator` to be processed.
* **Breaking:** Methods with parameters now expose a `.family` keyed by the
  method's arguments. A single positional argument is passed directly; methods
  with named or multiple parameters are keyed by a Dart record
  (e.g. `provider((search: 'flutter'))`).
* The provider type is inferred from the return type: `Future<T>` →
  `FutureProvider`, `Stream<T>` → `StreamProvider`, otherwise `Provider`.
* Remove the `part '*.repo.dart';` directive from your source files when
  migrating; just import the generated `*.repo.g.dart` file instead.
* Widened the `analyzer` constraint to `>=9.0.0 <14.0.0` to track the latest
  analyzer supported by `build`/`source_gen`, and formatted the package so it
  passes `dart analyze`/`dart format` with no issues.




