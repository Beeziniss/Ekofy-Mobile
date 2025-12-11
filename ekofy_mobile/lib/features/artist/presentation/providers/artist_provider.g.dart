// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Artist)
const artistProvider = ArtistProvider._();

final class ArtistProvider extends $NotifierProvider<Artist, ArtistState> {
  const ArtistProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'artistProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$artistHash();

  @$internal
  @override
  Artist create() => Artist();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ArtistState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ArtistState>(value),
    );
  }
}

String _$artistHash() => r'39c5e0a12640ea960e3776869903a85079b446ea';

abstract class _$Artist extends $Notifier<ArtistState> {
  ArtistState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ArtistState, ArtistState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ArtistState, ArtistState>,
              ArtistState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
