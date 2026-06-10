// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// RiverPodRepoGenerator
// **************************************************************************

// ignore_for_file: type=lint, type=warning

import 'package:riverpod/riverpod.dart';
import 'example.dart';
import 'student.dart';
import 'country.dart';

export 'example.dart';

/// Repository: RepoData, Method: getBooks
///
/// Get the books
final repoDataGetBooksProvider =
    FutureProvider.family<List<Student>, ({String search, String categoryId})>((
      ref,
      arg,
    ) {
      return ref
          .watch(repoDataProvider)
          .getBooks(search: arg.search, categoryId: arg.categoryId);
    });

/// Repository: RepoData, Method: getTopGenres
///
/// Get the top  genres (auto-dispose overrides class keepAlive)
final repoDataGetTopGenresProvider = FutureProvider.autoDispose<List<int>>((
  ref,
) {
  return ref.watch(repoDataProvider).getTopGenres();
});

/// Repository: RepoData, Method: getTopBooksByGenre
///
/// Get the top books by genre
final repoDataGetTopBooksByGenreProvider =
    FutureProvider.family<List<bool>, (String, {String search})>((ref, arg) {
      return ref
          .watch(repoDataProvider)
          .getTopBooksByGenre(arg.$1, search: arg.search);
    });

/// Repository: RepoData, Method: getCategories
///
final repoDataGetCategoriesProvider =
    FutureProvider.family<List<Hello>, ({String search})>((ref, arg) {
      return ref.watch(repoDataProvider).getCategories(search: arg.search);
    });

/// Repository: RepoData, Method: getCountry
///
/// Get the country by code
final repoDataGetCountryProvider = FutureProvider.family<Country, String>((
  ref,
  code,
) {
  return ref.watch(repoDataProvider).getCountry(code);
});

/// Invalidates every generated query provider for RepoData.
/// Call after a repository mutation so cached reads are refreshed.
void invalidateRepoDataProviders(Ref ref) {
  ref.invalidate(repoDataGetBooksProvider);
  ref.invalidate(repoDataGetTopGenresProvider);
  ref.invalidate(repoDataGetTopBooksByGenreProvider);
  ref.invalidate(repoDataGetCategoriesProvider);
  ref.invalidate(repoDataGetCountryProvider);
}
