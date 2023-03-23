// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// RiverPodRepoGenerator
// **************************************************************************

@riverpod
Future<List<String>> repoDataGetBooks(RepoDataGetBooksRef ref,
    {String search = '', String categoryId = ''}) {
  return ref.watch(repoDataProvider).getBooks(
        search: search,
        categoryId: categoryId,
      );
}

@riverpod
Future<List<int>> repoDataGetTopGenres(
  RepoDataGetTopGenresRef ref,
) {
  return ref.watch(repoDataProvider).getTopGenres();
}

@riverpod
Future<List<bool>> repoDataGetTopBooksByGenre(
    RepoDataGetTopBooksByGenreRef ref, String genreId,
    {String search = ''}) {
  return ref.watch(repoDataProvider).getTopBooksByGenre(
        genreId,
        search: search,
      );
}

@riverpod
Future<List<String>> repoDataGetCategories(RepoDataGetCategoriesRef ref,
    {String search = ''}) {
  return ref.watch(repoDataProvider).getCategories(
        search: search,
      );
}
