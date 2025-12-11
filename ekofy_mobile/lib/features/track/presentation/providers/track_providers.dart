import 'package:ekofy_mobile/core/configs/graphql_client_provider.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/track/data/models/track_model.dart';
import 'package:ekofy_mobile/features/track/data/datasource/streaming_api.dart';
import 'package:ekofy_mobile/features/track/data/datasource/audio_player_service.dart';
import 'package:ekofy_mobile/gql/queries/generated/track_query.graphql.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:just_audio/just_audio.dart';

// State class for track list
class TrackListState {
  final List<TrackModel> tracks;
  final bool isLoading;
  final String? error;

  TrackListState({this.tracks = const [], this.isLoading = false, this.error});

  TrackListState copyWith({
    List<TrackModel>? tracks,
    bool? isLoading,
    String? error,
  }) {
    return TrackListState(
      tracks: tracks ?? this.tracks,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

// Track list notifier
class TrackListNotifier extends Notifier<TrackListState> {
  @override
  TrackListState build() {
    return TrackListState();
  }

  Future<void> fetchTracks(int take) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final client = ref.read(graphqlClientProvider);
      final result = await client.query(
        QueryOptions(
          document: documentNodeQueryTrackList,
          variables: Variables$Query$TrackList(take: take).toJson(),
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );

      if (result.hasException) {
        state = state.copyWith(
          isLoading: false,
          error: result.exception.toString(),
        );
        return;
      }

      final queryResult = Query$TrackList.fromJson(result.data!);
      final tracks =
          queryResult.tracks?.items
              ?.map((item) => TrackModel.fromQueryItem(item))
              .toList() ??
          [];

      state = state.copyWith(tracks: tracks, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

// Provider for track list
final trackListProvider = NotifierProvider<TrackListNotifier, TrackListState>(
  () {
    return TrackListNotifier();
  },
);

// Provider for track detail by ID
final trackDetailProvider = FutureProvider.family<TrackModel?, String>((
  ref,
  trackId,
) async {
  try {
    final client = ref.read(graphqlClientProvider);
    final result = await client.query(
      QueryOptions(
        document: documentNodeQueryTrackDetail,
        variables: Variables$Query$TrackDetail(
          where: Input$TrackFilterInput(
            id: Input$StringOperationFilterInput(eq: trackId),
          ),
          take: 1,
        ).toJson(),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    final queryResult = Query$TrackDetail.fromJson(result.data!);
    final trackItem = queryResult.tracks?.items?.firstOrNull;

    if (trackItem != null) {
      return TrackModel.fromDetailQueryItem(trackItem);
    }
    return null;
  } catch (e) {
    throw Exception('Failed to fetch track: $e');
  }
});

// Provider for streaming API
final streamingApiProvider = Provider<StreamingApi>((ref) {
  final dio = ref.watch(dioProvider);
  return StreamingApi(dio: dio);
});

// Provider for audio player service
final audioPlayerServiceProvider = Provider<AudioPlayerService>((ref) {
  final streamingApi = ref.watch(streamingApiProvider);
  final service = AudioPlayerService(streamingApi: streamingApi, ref: ref);

  // Dispose when the provider is disposed
  ref.onDispose(() {
    service.dispose();
  });

  return service;
});

// Current track provider
final currentTrackProvider = Provider<TrackModel?>((ref) {
  final service = ref.watch(audioPlayerServiceProvider);
  return service.currentTrack;
});

// Stream providers for player state
final positionStreamProvider = StreamProvider<Duration>((ref) {
  final service = ref.watch(audioPlayerServiceProvider);
  return service.positionStream;
});

final durationStreamProvider = StreamProvider<Duration?>((ref) {
  final service = ref.watch(audioPlayerServiceProvider);
  return service.durationStream;
});

final playingStreamProvider = StreamProvider<bool>((ref) {
  final service = ref.watch(audioPlayerServiceProvider);
  return service.playingStream;
});

final loopModeStreamProvider = StreamProvider<LoopMode>((ref) {
  final service = ref.watch(audioPlayerServiceProvider);
  return service.loopModeStream;
});

final shuffleModeStreamProvider = StreamProvider<bool>((ref) {
  final service = ref.watch(audioPlayerServiceProvider);
  return service.shuffleModeEnabledStream;
});
