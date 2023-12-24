// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repoDataHash() => r'5c6c9ce86fa43bc8b32ab0005438bf0ee9359beb';

/// See also [repoData].
@ProviderFor(repoData)
final repoDataProvider = Provider<RepoData>.internal(
  repoData,
  name: r'repoDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$repoDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RepoDataRef = ProviderRef<RepoData>;
String _$repoDataGetBooksHash() => r'444d465dcd9ca476a059f881703551aabc7dc1d2';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// Repositroy: RepoData, Method: getBooks
///
/// Get the books
///
/// Copied from [repoDataGetBooks].
@ProviderFor(repoDataGetBooks)
const repoDataGetBooksProvider = RepoDataGetBooksFamily();

/// Repositroy: RepoData, Method: getBooks
///
/// Get the books
///
/// Copied from [repoDataGetBooks].
class RepoDataGetBooksFamily extends Family<AsyncValue<List<String>>> {
  /// Repositroy: RepoData, Method: getBooks
  ///
  /// Get the books
  ///
  /// Copied from [repoDataGetBooks].
  const RepoDataGetBooksFamily();

  /// Repositroy: RepoData, Method: getBooks
  ///
  /// Get the books
  ///
  /// Copied from [repoDataGetBooks].
  RepoDataGetBooksProvider call({
    String search = '',
    String categoryId = '',
  }) {
    return RepoDataGetBooksProvider(
      search: search,
      categoryId: categoryId,
    );
  }

  @override
  RepoDataGetBooksProvider getProviderOverride(
    covariant RepoDataGetBooksProvider provider,
  ) {
    return call(
      search: provider.search,
      categoryId: provider.categoryId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repoDataGetBooksProvider';
}

/// Repositroy: RepoData, Method: getBooks
///
/// Get the books
///
/// Copied from [repoDataGetBooks].
class RepoDataGetBooksProvider extends AutoDisposeFutureProvider<List<String>> {
  /// Repositroy: RepoData, Method: getBooks
  ///
  /// Get the books
  ///
  /// Copied from [repoDataGetBooks].
  RepoDataGetBooksProvider({
    String search = '',
    String categoryId = '',
  }) : this._internal(
          (ref) => repoDataGetBooks(
            ref as RepoDataGetBooksRef,
            search: search,
            categoryId: categoryId,
          ),
          from: repoDataGetBooksProvider,
          name: r'repoDataGetBooksProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repoDataGetBooksHash,
          dependencies: RepoDataGetBooksFamily._dependencies,
          allTransitiveDependencies:
              RepoDataGetBooksFamily._allTransitiveDependencies,
          search: search,
          categoryId: categoryId,
        );

  RepoDataGetBooksProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.search,
    required this.categoryId,
  }) : super.internal();

  final String search;
  final String categoryId;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(RepoDataGetBooksRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RepoDataGetBooksProvider._internal(
        (ref) => create(ref as RepoDataGetBooksRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        search: search,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _RepoDataGetBooksProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepoDataGetBooksProvider &&
        other.search == search &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepoDataGetBooksRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `search` of this provider.
  String get search;

  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _RepoDataGetBooksProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with RepoDataGetBooksRef {
  _RepoDataGetBooksProviderElement(super.provider);

  @override
  String get search => (origin as RepoDataGetBooksProvider).search;
  @override
  String get categoryId => (origin as RepoDataGetBooksProvider).categoryId;
}

String _$repoDataGetTopGenresHash() =>
    r'b16ac50e969229685d19013c557c0f59ed7d4085';

/// Repositroy: RepoData, Method: getTopGenres
///
/// Get the top  genres
///
/// Copied from [repoDataGetTopGenres].
@ProviderFor(repoDataGetTopGenres)
final repoDataGetTopGenresProvider =
    AutoDisposeFutureProvider<List<int>>.internal(
  repoDataGetTopGenres,
  name: r'repoDataGetTopGenresProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$repoDataGetTopGenresHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RepoDataGetTopGenresRef = AutoDisposeFutureProviderRef<List<int>>;
String _$repoDataGetTopBooksByGenreHash() =>
    r'4ee0efb8b4903ffc14e783c8c43e4567cdfc346c';

/// Repositroy: RepoData, Method: getTopBooksByGenre
///
/// Get the top books by genre
///
/// Copied from [repoDataGetTopBooksByGenre].
@ProviderFor(repoDataGetTopBooksByGenre)
const repoDataGetTopBooksByGenreProvider = RepoDataGetTopBooksByGenreFamily();

/// Repositroy: RepoData, Method: getTopBooksByGenre
///
/// Get the top books by genre
///
/// Copied from [repoDataGetTopBooksByGenre].
class RepoDataGetTopBooksByGenreFamily extends Family<AsyncValue<List<bool>>> {
  /// Repositroy: RepoData, Method: getTopBooksByGenre
  ///
  /// Get the top books by genre
  ///
  /// Copied from [repoDataGetTopBooksByGenre].
  const RepoDataGetTopBooksByGenreFamily();

  /// Repositroy: RepoData, Method: getTopBooksByGenre
  ///
  /// Get the top books by genre
  ///
  /// Copied from [repoDataGetTopBooksByGenre].
  RepoDataGetTopBooksByGenreProvider call(
    String genreId, {
    String search = '',
  }) {
    return RepoDataGetTopBooksByGenreProvider(
      genreId,
      search: search,
    );
  }

  @override
  RepoDataGetTopBooksByGenreProvider getProviderOverride(
    covariant RepoDataGetTopBooksByGenreProvider provider,
  ) {
    return call(
      provider.genreId,
      search: provider.search,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repoDataGetTopBooksByGenreProvider';
}

/// Repositroy: RepoData, Method: getTopBooksByGenre
///
/// Get the top books by genre
///
/// Copied from [repoDataGetTopBooksByGenre].
class RepoDataGetTopBooksByGenreProvider
    extends AutoDisposeFutureProvider<List<bool>> {
  /// Repositroy: RepoData, Method: getTopBooksByGenre
  ///
  /// Get the top books by genre
  ///
  /// Copied from [repoDataGetTopBooksByGenre].
  RepoDataGetTopBooksByGenreProvider(
    String genreId, {
    String search = '',
  }) : this._internal(
          (ref) => repoDataGetTopBooksByGenre(
            ref as RepoDataGetTopBooksByGenreRef,
            genreId,
            search: search,
          ),
          from: repoDataGetTopBooksByGenreProvider,
          name: r'repoDataGetTopBooksByGenreProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repoDataGetTopBooksByGenreHash,
          dependencies: RepoDataGetTopBooksByGenreFamily._dependencies,
          allTransitiveDependencies:
              RepoDataGetTopBooksByGenreFamily._allTransitiveDependencies,
          genreId: genreId,
          search: search,
        );

  RepoDataGetTopBooksByGenreProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.genreId,
    required this.search,
  }) : super.internal();

  final String genreId;
  final String search;

  @override
  Override overrideWith(
    FutureOr<List<bool>> Function(RepoDataGetTopBooksByGenreRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RepoDataGetTopBooksByGenreProvider._internal(
        (ref) => create(ref as RepoDataGetTopBooksByGenreRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        genreId: genreId,
        search: search,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<bool>> createElement() {
    return _RepoDataGetTopBooksByGenreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepoDataGetTopBooksByGenreProvider &&
        other.genreId == genreId &&
        other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, genreId.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepoDataGetTopBooksByGenreRef
    on AutoDisposeFutureProviderRef<List<bool>> {
  /// The parameter `genreId` of this provider.
  String get genreId;

  /// The parameter `search` of this provider.
  String get search;
}

class _RepoDataGetTopBooksByGenreProviderElement
    extends AutoDisposeFutureProviderElement<List<bool>>
    with RepoDataGetTopBooksByGenreRef {
  _RepoDataGetTopBooksByGenreProviderElement(super.provider);

  @override
  String get genreId => (origin as RepoDataGetTopBooksByGenreProvider).genreId;
  @override
  String get search => (origin as RepoDataGetTopBooksByGenreProvider).search;
}

String _$repoDataGetCategoriesHash() =>
    r'1096c87ff6c36a10e742f31abd58623c2d029681';

/// Repositroy: RepoData, Method: getCategories
///
///
/// Copied from [repoDataGetCategories].
@ProviderFor(repoDataGetCategories)
const repoDataGetCategoriesProvider = RepoDataGetCategoriesFamily();

/// Repositroy: RepoData, Method: getCategories
///
///
/// Copied from [repoDataGetCategories].
class RepoDataGetCategoriesFamily extends Family<AsyncValue<List<String>>> {
  /// Repositroy: RepoData, Method: getCategories
  ///
  ///
  /// Copied from [repoDataGetCategories].
  const RepoDataGetCategoriesFamily();

  /// Repositroy: RepoData, Method: getCategories
  ///
  ///
  /// Copied from [repoDataGetCategories].
  RepoDataGetCategoriesProvider call({
    String search = '',
  }) {
    return RepoDataGetCategoriesProvider(
      search: search,
    );
  }

  @override
  RepoDataGetCategoriesProvider getProviderOverride(
    covariant RepoDataGetCategoriesProvider provider,
  ) {
    return call(
      search: provider.search,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repoDataGetCategoriesProvider';
}

/// Repositroy: RepoData, Method: getCategories
///
///
/// Copied from [repoDataGetCategories].
class RepoDataGetCategoriesProvider
    extends AutoDisposeFutureProvider<List<String>> {
  /// Repositroy: RepoData, Method: getCategories
  ///
  ///
  /// Copied from [repoDataGetCategories].
  RepoDataGetCategoriesProvider({
    String search = '',
  }) : this._internal(
          (ref) => repoDataGetCategories(
            ref as RepoDataGetCategoriesRef,
            search: search,
          ),
          from: repoDataGetCategoriesProvider,
          name: r'repoDataGetCategoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repoDataGetCategoriesHash,
          dependencies: RepoDataGetCategoriesFamily._dependencies,
          allTransitiveDependencies:
              RepoDataGetCategoriesFamily._allTransitiveDependencies,
          search: search,
        );

  RepoDataGetCategoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.search,
  }) : super.internal();

  final String search;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(RepoDataGetCategoriesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RepoDataGetCategoriesProvider._internal(
        (ref) => create(ref as RepoDataGetCategoriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        search: search,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _RepoDataGetCategoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepoDataGetCategoriesProvider && other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepoDataGetCategoriesRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `search` of this provider.
  String get search;
}

class _RepoDataGetCategoriesProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with RepoDataGetCategoriesRef {
  _RepoDataGetCategoriesProviderElement(super.provider);

  @override
  String get search => (origin as RepoDataGetCategoriesProvider).search;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
