import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_repo/annotations.dart';

part 'example.g.dart';
part 'example.repo.g.dart';

@Riverpod(keepAlive: true)
RepoData repoData(RepoDataRef ref) => RepoDataImpl();

@riverpodRepo
abstract class RepoData {
  Future<List<String>> getBooks({String search = '', String categoryId = ''});

  Future<List<int>> getTopGenres();

  Future<List<bool>> getTopBooksByGenre(String genreId, {String search = ''});

  Future<List<String>> getCategories({String search = ''});
}

class RepoDataImpl implements RepoData {
  @override
  Future<List<String>> getBooks({String search = '', String categoryId = ''}) {
    throw UnimplementedError();
  }

  @override
  Future<List<String>> getCategories({String search = ''}) {
    throw UnimplementedError();
  }

  @override
  Future<List<bool>> getTopBooksByGenre(String genreId, {String search = ''}) {
    throw UnimplementedError();
  }

  @override
  Future<List<int>> getTopGenres() {
    throw UnimplementedError();
  }
}
