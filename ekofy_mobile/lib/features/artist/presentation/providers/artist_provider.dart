import 'package:ekofy_mobile/core/configs/graphql_client_provider.dart';
import 'package:ekofy_mobile/features/artist/data/datasource/artist_api_datasource.dart';
import 'package:ekofy_mobile/features/artist/presentation/providers/artist_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'artist_provider.g.dart';

final artistApiDataSourceProvider = Provider<ArtistApiDataSource>((ref) {
  final client = ref.watch(graphqlClientProvider);
  return ArtistApiDataSource(client);
});

@riverpod
class Artist extends _$Artist {
  late final ArtistApiDataSource _dataSource;

  @override
  ArtistState build() {
    _dataSource = ref.watch(artistApiDataSourceProvider);
    return const ArtistState.initial();
  }

  Future<void> fetchPackages(String artistId) async {
    state = const ArtistState.loading();
    try {
      final packages = await _dataSource.fetchArtistPackages(
        artistId: artistId,
      );
      state = ArtistState.success(packages);
    } catch (e) {
      state = ArtistState.failure(e.toString());
    }
  }
}
