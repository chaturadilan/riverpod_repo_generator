// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Repositroy: RepoData, Method: getBooks
///
/// Get the books

@ProviderFor(repoDataGetBooks)
const repoDataGetBooksProvider = RepoDataGetBooksFamily._();

/// Repositroy: RepoData, Method: getBooks
///
/// Get the books

final class RepoDataGetBooksProvider extends $FunctionalProvider<
        AsyncValue<List<String>>, List<String>, FutureOr<List<String>>>
    with $FutureModifier<List<String>>, $FutureProvider<List<String>> {
  /// Repositroy: RepoData, Method: getBooks
  ///
  /// Get the books
  const RepoDataGetBooksProvider._(
      {required RepoDataGetBooksFamily super.from,
      required ({
        String search,
        String categoryId,
      })
          super.argument})
      : super(
          retry: null,
          name: r'repoDataGetBooksProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$repoDataGetBooksHash();

  @override
  String toString() {
    return r'repoDataGetBooksProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<String>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>> create(Ref ref) {
    final argument = this.argument as ({
      String search,
      String categoryId,
    });
    return repoDataGetBooks(
      ref,
      search: argument.search,
      categoryId: argument.categoryId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RepoDataGetBooksProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$repoDataGetBooksHash() => r'182958aa760fbe82270407002e842c5a418a03a8';

/// Repositroy: RepoData, Method: getBooks
///
/// Get the books

final class RepoDataGetBooksFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<List<String>>,
            ({
              String search,
              String categoryId,
            })> {
  const RepoDataGetBooksFamily._()
      : super(
          retry: null,
          name: r'repoDataGetBooksProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Repositroy: RepoData, Method: getBooks
  ///
  /// Get the books

  RepoDataGetBooksProvider call({
    String search = '',
    String categoryId = '',
  }) =>
      RepoDataGetBooksProvider._(argument: (
        search: search,
        categoryId: categoryId,
      ), from: this);

  @override
  String toString() => r'repoDataGetBooksProvider';
}

/// Repositroy: RepoData, Method: getTopGenres
///
/// Get the top  genres

@ProviderFor(repoDataGetTopGenres)
const repoDataGetTopGenresProvider = RepoDataGetTopGenresProvider._();

/// Repositroy: RepoData, Method: getTopGenres
///
/// Get the top  genres

final class RepoDataGetTopGenresProvider extends $FunctionalProvider<
        AsyncValue<List<int>>, List<int>, FutureOr<List<int>>>
    with $FutureModifier<List<int>>, $FutureProvider<List<int>> {
  /// Repositroy: RepoData, Method: getTopGenres
  ///
  /// Get the top  genres
  const RepoDataGetTopGenresProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'repoDataGetTopGenresProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$repoDataGetTopGenresHash();

  @$internal
  @override
  $FutureProviderElement<List<int>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<int>> create(Ref ref) {
    return repoDataGetTopGenres(ref);
  }
}

String _$repoDataGetTopGenresHash() =>
    r'6f80cfa1c140a9248504b31a6b3d991430d056ef';

/// Repositroy: RepoData, Method: getTopBooksByGenre
///
/// Get the top books by genre

@ProviderFor(repoDataGetTopBooksByGenre)
const repoDataGetTopBooksByGenreProvider = RepoDataGetTopBooksByGenreFamily._();

/// Repositroy: RepoData, Method: getTopBooksByGenre
///
/// Get the top books by genre

final class RepoDataGetTopBooksByGenreProvider extends $FunctionalProvider<
        AsyncValue<List<bool>>, List<bool>, FutureOr<List<bool>>>
    with $FutureModifier<List<bool>>, $FutureProvider<List<bool>> {
  /// Repositroy: RepoData, Method: getTopBooksByGenre
  ///
  /// Get the top books by genre
  const RepoDataGetTopBooksByGenreProvider._(
      {required RepoDataGetTopBooksByGenreFamily super.from,
      required (
        String, {
        String search,
      })
          super.argument})
      : super(
          retry: null,
          name: r'repoDataGetTopBooksByGenreProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$repoDataGetTopBooksByGenreHash();

  @override
  String toString() {
    return r'repoDataGetTopBooksByGenreProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<bool>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<bool>> create(Ref ref) {
    final argument = this.argument as (
      String, {
      String search,
    });
    return repoDataGetTopBooksByGenre(
      ref,
      argument.$1,
      search: argument.search,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RepoDataGetTopBooksByGenreProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$repoDataGetTopBooksByGenreHash() =>
    r'b7b71543c7c9f9815d5c23220f3ae42911db4ff2';

/// Repositroy: RepoData, Method: getTopBooksByGenre
///
/// Get the top books by genre

final class RepoDataGetTopBooksByGenreFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<List<bool>>,
            (
              String, {
              String search,
            })> {
  const RepoDataGetTopBooksByGenreFamily._()
      : super(
          retry: null,
          name: r'repoDataGetTopBooksByGenreProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Repositroy: RepoData, Method: getTopBooksByGenre
  ///
  /// Get the top books by genre

  RepoDataGetTopBooksByGenreProvider call(
    String genreId, {
    String search = '',
  }) =>
      RepoDataGetTopBooksByGenreProvider._(argument: (
        genreId,
        search: search,
      ), from: this);

  @override
  String toString() => r'repoDataGetTopBooksByGenreProvider';
}

/// Repositroy: RepoData, Method: getCategories
///

@ProviderFor(repoDataGetCategories)
const repoDataGetCategoriesProvider = RepoDataGetCategoriesFamily._();

/// Repositroy: RepoData, Method: getCategories
///

final class RepoDataGetCategoriesProvider extends $FunctionalProvider<
        AsyncValue<List<String>>, List<String>, FutureOr<List<String>>>
    with $FutureModifier<List<String>>, $FutureProvider<List<String>> {
  /// Repositroy: RepoData, Method: getCategories
  ///
  const RepoDataGetCategoriesProvider._(
      {required RepoDataGetCategoriesFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'repoDataGetCategoriesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$repoDataGetCategoriesHash();

  @override
  String toString() {
    return r'repoDataGetCategoriesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<String>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>> create(Ref ref) {
    final argument = this.argument as String;
    return repoDataGetCategories(
      ref,
      search: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RepoDataGetCategoriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$repoDataGetCategoriesHash() =>
    r'8362c9e317287b4a18f4d56b4b829afa36b18d75';

/// Repositroy: RepoData, Method: getCategories
///

final class RepoDataGetCategoriesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<String>>, String> {
  const RepoDataGetCategoriesFamily._()
      : super(
          retry: null,
          name: r'repoDataGetCategoriesProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Repositroy: RepoData, Method: getCategories
  ///

  RepoDataGetCategoriesProvider call({
    String search = '',
  }) =>
      RepoDataGetCategoriesProvider._(argument: search, from: this);

  @override
  String toString() => r'repoDataGetCategoriesProvider';
}
