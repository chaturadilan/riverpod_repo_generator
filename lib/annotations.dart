//
//  Copyright 2023 Chatura Dilan Perera. All rights reserved.
//  Use of this source code is governed by license that can be
//  found in the LICENSE file.
//  Created: 2023-03-21T00:01:38.193Z
//

/// Annotations for [riverpod_repo](https://pub.dev/packages/riverpod_repo).
library;

/// Marks a repository interface for provider generation.
///
/// [keepAlive] applies to every generated query provider unless overridden
/// with [RepoQueryAnnotation].
class RiverpodRepoAnnotation {
  /// Creates a repository annotation.
  ///
  /// When [keepAlive] is `true`, generated providers are kept alive instead of
  /// auto-disposed.
  const RiverpodRepoAnnotation({this.keepAlive = false});

  /// When `true`, generated providers are kept alive instead of auto-disposed.
  final bool keepAlive;
}

/// Default [RiverpodRepoAnnotation] with auto-dispose providers.
const riverpodRepo = RiverpodRepoAnnotation();

/// Marks a repository method as a read/query and forces provider generation.
///
/// Use this when a method name matches a mutation prefix (for example
/// `deleteBook`) but is still a query.
class RepoQueryAnnotation {
  /// Creates a query annotation, optionally overriding [keepAlive].
  const RepoQueryAnnotation({this.keepAlive});

  /// Overrides [RiverpodRepoAnnotation.keepAlive] for this method only.
  final bool? keepAlive;
}

/// Marks a method as a query when mutation heuristics would skip it.
const repoQuery = RepoQueryAnnotation();

/// Marks a repository method as a command/mutation.
///
/// No provider is generated for annotated methods.
class RepoMutationAnnotation {
  /// Creates a mutation annotation.
  const RepoMutationAnnotation();
}

/// Marks a method as a mutation so no provider is generated.
const repoMutation = RepoMutationAnnotation();

/// Alias for [repoMutation].
const ignoreRepo = RepoMutationAnnotation();

/// Reserved annotation for future JSON helpers.
class JSONGenAnnotation {
  /// Creates a JSON generation annotation.
  const JSONGenAnnotation();
}

/// Reserved annotation for future JSON helpers.
const jsonGen = JSONGenAnnotation();
