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

typedef RepoDataGetBooksRef = AutoDisposeFutureProviderRef<List<String>>;

/// See also [repoDataGetBooks].
@ProviderFor(repoDataGetBooks)
const repoDataGetBooksProvider = RepoDataGetBooksFamily();

/// See also [repoDataGetBooks].
class RepoDataGetBooksFamily extends Family<AsyncValue<List<String>>> {
  /// See also [repoDataGetBooks].
  const RepoDataGetBooksFamily();

  /// See also [repoDataGetBooks].
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

/// See also [repoDataGetBooks].
class RepoDataGetBooksProvider extends AutoDisposeFutureProvider<List<String>> {
  /// See also [repoDataGetBooks].
  RepoDataGetBooksProvider({
    this.search = '',
    this.categoryId = '',
  }) : super.internal(
          (ref) => repoDataGetBooks(
            ref,
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
        );

  final String search;
  final String categoryId;

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

String _$repoDataGetTopGenresHash() =>
    r'b16ac50e969229685d19013c557c0f59ed7d4085';

/// See also [repoDataGetTopGenres].
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
typedef RepoDataGetTopBooksByGenreRef
    = AutoDisposeFutureProviderRef<List<bool>>;

/// See also [repoDataGetTopBooksByGenre].
@ProviderFor(repoDataGetTopBooksByGenre)
const repoDataGetTopBooksByGenreProvider = RepoDataGetTopBooksByGenreFamily();

/// See also [repoDataGetTopBooksByGenre].
class RepoDataGetTopBooksByGenreFamily extends Family<AsyncValue<List<bool>>> {
  /// See also [repoDataGetTopBooksByGenre].
  const RepoDataGetTopBooksByGenreFamily();

  /// See also [repoDataGetTopBooksByGenre].
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

/// See also [repoDataGetTopBooksByGenre].
class RepoDataGetTopBooksByGenreProvider
    extends AutoDisposeFutureProvider<List<bool>> {
  /// See also [repoDataGetTopBooksByGenre].
  RepoDataGetTopBooksByGenreProvider(
    this.genreId, {
    this.search = '',
  }) : super.internal(
          (ref) => repoDataGetTopBooksByGenre(
            ref,
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
        );

  final String genreId;
  final String search;

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

String _$repoDataGetCategoriesHash() =>
    r'1096c87ff6c36a10e742f31abd58623c2d029681';
typedef RepoDataGetCategoriesRef = AutoDisposeFutureProviderRef<List<String>>;

/// See also [repoDataGetCategories].
@ProviderFor(repoDataGetCategories)
const repoDataGetCategoriesProvider = RepoDataGetCategoriesFamily();

/// See also [repoDataGetCategories].
class RepoDataGetCategoriesFamily extends Family<AsyncValue<List<String>>> {
  /// See also [repoDataGetCategories].
  const RepoDataGetCategoriesFamily();

  /// See also [repoDataGetCategories].
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

/// See also [repoDataGetCategories].
class RepoDataGetCategoriesProvider
    extends AutoDisposeFutureProvider<List<String>> {
  /// See also [repoDataGetCategories].
  RepoDataGetCategoriesProvider({
    this.search = '',
  }) : super.internal(
          (ref) => repoDataGetCategories(
            ref,
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
        );

  final String search;

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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
