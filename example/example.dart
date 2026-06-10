import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_repo/riverpod_repo.dart';

import 'country.dart';
import 'student.dart';

part 'example.g.dart';

@Riverpod(keepAlive: true)
RepoData repoData(Ref ref) => RepoDataImpl();

@RiverpodRepoAnnotation(keepAlive: true)
/// Repository class to get Data
abstract class RepoData {
  /// Get the books
  Future<List<Student>> getBooks({String search = '', String categoryId = ''});

  /// Get the top  genres (auto-dispose overrides class keepAlive)
  @RepoQueryAnnotation(keepAlive: false)
  Future<List<int>> getTopGenres();

  /// Get the top books by genre
  Future<List<bool>> getTopBooksByGenre(String genreId, {String search = ''});

  Future<List<Hello>> getCategories({String search = ''});

  /// Get the country by code
  Future<Country> getCountry(String code);

  /// Mutation — no provider is generated
  Future<void> deleteBook(String bookId);
}

/// Repository Implementation class to get Data
class RepoDataImpl implements RepoData {
  /// Implimentation of the getBooks method
  @override
  Future<List<Student>> getBooks({String search = '', String categoryId = ''}) {
    throw UnimplementedError();
  }

  /// Implimentation of the getCategories method
  @override
  Future<List<Hello>> getCategories({String search = ''}) {
    throw UnimplementedError();
  }

  /// Implimentation of the getTopBooksByGenre method
  @override
  Future<List<bool>> getTopBooksByGenre(String genreId, {String search = ''}) {
    throw UnimplementedError();
  }

  /// Implimentation of the getTopGenres method
  @override
  Future<List<int>> getTopGenres() {
    throw UnimplementedError();
  }

  /// Implimentation of the getCountry method
  @override
  Future<Country> getCountry(String code) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteBook(String bookId) {
    throw UnimplementedError();
  }
}
