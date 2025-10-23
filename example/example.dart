import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_repo/annotations.dart';

part 'example.g.dart';
part 'example.repo.dart';

@Riverpod(keepAlive: true)
RepoData repoData(Ref ref) => RepoDataImpl();

@riverpodRepo

/// Repository class to get Data
abstract class RepoData {
  /// Get the books
  Future<List<String>> getBooks({String search = '', String categoryId = ''});

  /// Get the top  genres
  Future<List<int>> getTopGenres();

  /// Get the top books by genre
  Future<List<bool>> getTopBooksByGenre(String genreId, {String search = ''});

  Future<List<String>> getCategories({String search = ''});
}

/// Repository Implementation class to get Data
class RepoDataImpl implements RepoData {
  /// Implimentation of the getBooks method
  @override
  Future<List<String>> getBooks({String search = '', String categoryId = ''}) {
    throw UnimplementedError();
  }

  /// Implimentation of the getCategories method
  @override
  Future<List<String>> getCategories({String search = ''}) {
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
}
