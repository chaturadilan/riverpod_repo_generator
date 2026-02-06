// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(repoData)
final repoDataProvider = RepoDataProvider._();

final class RepoDataProvider
    extends $FunctionalProvider<RepoData, RepoData, RepoData>
    with $Provider<RepoData> {
  RepoDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'repoDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$repoDataHash();

  @$internal
  @override
  $ProviderElement<RepoData> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RepoData create(Ref ref) {
    return repoData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RepoData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RepoData>(value),
    );
  }
}

String _$repoDataHash() => r'f0f05cfe280d0e933f53eda3c4e2c5b091c6d0ae';
