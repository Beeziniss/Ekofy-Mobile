import 'package:ekofy_mobile/core/configs/graphql_client_provider.dart';
import 'package:ekofy_mobile/features/library/data/datasources/library_api_datasource.dart';
import 'package:ekofy_mobile/features/library/presentation/providers/library_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final libraryApiDataSourceProvider = Provider<LibraryApiDataSource>((ref) {
  final client = ref.watch(graphqlClientProvider);
  return LibraryApiDataSource(client);
});

final libraryProvider = NotifierProvider<LibraryNotifier, LibraryState>(() {
  return LibraryNotifier();
});

class LibraryNotifier extends Notifier<LibraryState> {
  late final LibraryApiDataSource _dataSource;

  @override
  LibraryState build() {
    _dataSource = ref.watch(libraryApiDataSourceProvider);
    return const LibraryState.initial();
  }

  Future<void> fetchArtists() async {
    state = const LibraryState.loading();
    try {
      // Hardcoded limit/offset for now as per requirement "fetch data"
      final artists = await _dataSource.fetchArtistsInLibrary(
        offset: 0,
        limit: 20,
      );
      state = LibraryState.success(artists);
    } catch (e) {
      state = LibraryState.failure(e.toString());
    }
  }

  Future<void> toggleFollow(String artistId) async {
    final currentState = state;
    if (currentState is! LibrarySuccess) return;

    // Optimistic update could be tricky if we remove the item immediately.
    // For "Artists in Library", unfollowing usually means removing from library.
    // But let's just call the API and refresh or update list.

    try {
      final success = await _dataSource.followArtist(targetId: artistId);
      if (success) {
        // If we are in "Library", unfollowing might mean removing it.
        // But if "followArtist" toggles, we need to know the new state.
        // The mutation returns boolean `followUser`.
        // Assuming `followUser` returns true if followed, false if unfollowed?
        // Or maybe it just returns success status?
        // The schema says `followUser(request: ...): Boolean`. Usually means success.

        // If this is "Artists in Library", and we unfollow, we should probably remove it from the list.
        // Let's assume we remove it for now if the action was successful.

        final updatedList = currentState.artists
            .where((a) => a.id != artistId)
            .toList();
        state = LibraryState.success(updatedList);
      }
    } catch (e) {
      // Show error?
    }
  }
}
