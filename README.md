# Repo Generator with Riverpod

## Getting Started

This is a Flutter code generator to generate Riverpod Providers based on the Repository pattern.

The repository pattern is used to separate the concerns of data access and storage from the rest of the application logic. It provides a consistent interface for accessing and manipulating data regardless of the underlying data storage technology, such as a database or file system.

In this pattern, the application interacts with a repository interface, which acts as a mediator between the data access layer and the business logic layer. The repository interface provides a set of methods that can be used to perform operations on the data.


### How To


1. Create a abstract class (Interface for your repository)
2. Add @riverpodRepo annotation to your interface class
3. Add part directive for .g.dart and .repo.g.dart
```
part 'data_repo.g.dart';
part 'data_repo.repo.g.dart';

```
4. Create a provider to access the implementation of your repository
5. Run the builder
```
 flutter pub run build_runner build --delete-conflicting-outputs
```
6. It will create a Riverpod Providers for each abstract methods which defined in your repositrory


## Example


```
// File data_repo.dart

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_repo/annotations.dart';

part 'data_repo.g.dart';
part 'data_repo.repo.g.dart';

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
    // TODO: implement getTopBooksByGenre
    throw UnimplementedError();
  }

  @override
  Future<List<int>> getTopGenres() {
    // TODO: implement getTopGenres
    throw UnimplementedError();
  }
}

```

This will generate following providers
in data_repo.repo.g.dart

```
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_repo.dart';

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


```

## Important

1. The providers will be prefixed with the Repo Class name
```
@riverpodRepo
abstract class RepoData {
}
```
2. Repo Class name and the provider you create for that class names should be same

```
@Riverpod(keepAlive: true)
RepoData repoData(RepoDataRef ref) => RepoDataImpl();
```
  
## License (MIT)
Copyright (c) 2021 Chatura Dilan Perera

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Support
Please contact dilan@dilan.me for support and Sample Application