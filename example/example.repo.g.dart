// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// RiverPodRepoGenerator
// **************************************************************************

/// Repositroy: RepoData, Method: getBooks
///
/// Get the books
@riverpod
Future<List<String>> repoDataGetBooks(RepoDataGetBooksRef ref,
    {String search = '', String categoryId = ''}) {
  return ref.watch(repoDataProvider).getBooks(
        search: search,
        categoryId: categoryId,
      );
}

/// Repositroy: RepoData, Method: getTopGenres
///
/// Get the top  genres
@riverpod
Future<List<int>> repoDataGetTopGenres(
  RepoDataGetTopGenresRef ref,
) {
  return ref.watch(repoDataProvider).getTopGenres();
}

/// Repositroy: RepoData, Method: getTopBooksByGenre
///
/// Get the top books by genre
@riverpod
Future<List<bool>> repoDataGetTopBooksByGenre(
    RepoDataGetTopBooksByGenreRef ref, String genreId,
    {String search = ''}) {
  return ref.watch(repoDataProvider).getTopBooksByGenre(
        genreId,
        search: search,
      );
}

/// Repositroy: RepoData, Method: getCategories
///
@riverpod
Future<List<String>> repoDataGetCategories(RepoDataGetCategoriesRef ref,
    {String search = ''}) {
  return ref.watch(repoDataProvider).getCategories(
        search: search,
      );
}
