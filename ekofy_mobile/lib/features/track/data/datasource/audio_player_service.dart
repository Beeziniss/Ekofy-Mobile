import 'dart:math';

import 'package:just_audio/just_audio.dart';
import 'package:ekofy_mobile/features/track/data/datasource/streaming_api.dart';
import 'package:ekofy_mobile/features/track/data/models/track_model.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Audio player state
enum AudioPlayerState { idle, loading, playing, paused, error }

/// Audio player service that manages streaming playback
class AudioPlayerService {
  final AudioPlayer _player;
  final StreamingApi _streamingApi;
  final Ref _ref;

  TrackModel? _currentTrack;
  String? _currentStreamUrl;
  AudioPlayerState _state = AudioPlayerState.idle;

  AudioPlayerService({
    AudioPlayer? player,
    required StreamingApi streamingApi,
    required Ref ref,
  }) : _player = player ?? AudioPlayer(),
       _streamingApi = streamingApi,
       _ref = ref {
    _setupPlayerListeners();
  }

  // Getters
  AudioPlayer get player => _player;
  TrackModel? get currentTrack => _currentTrack;
  AudioPlayerState get state => _state;
  String? get currentStreamUrl => _currentStreamUrl;

  // Stream getters for reactive UI
  Stream<Duration> get positionStream => _player.positionStream;
  Stream<Duration?> get durationStream => _player.durationStream;
  Stream<PlayerState> get playerStateStream => _player.playerStateStream;
  Stream<bool> get playingStream => _player.playingStream;
  Stream<double> get speedStream => _player.speedStream;
  Stream<LoopMode> get loopModeStream => _player.loopModeStream;
  Stream<bool> get shuffleModeEnabledStream => _player.shuffleModeEnabledStream;

  /// Setup listeners for player events
  void _setupPlayerListeners() {
    _player.playerStateStream.listen((playerState) {
      if (playerState.processingState == ProcessingState.loading ||
          playerState.processingState == ProcessingState.buffering) {
        _state = AudioPlayerState.loading;
      } else if (playerState.playing) {
        _state = AudioPlayerState.playing;
      } else if (playerState.processingState == ProcessingState.completed) {
        _state = AudioPlayerState.idle;
      } else {
        _state = AudioPlayerState.paused;
      }
    });

    // Handle errors
    _player.playbackEventStream.listen(
      (event) {},
      onError: (Object e, StackTrace stackTrace) {
        print('Audio player error: $e');
        _state = AudioPlayerState.error;
      },
    );
  }

  /// Load and play a track
  Future<void> playTrack(TrackModel track) async {
    try {
      _state = AudioPlayerState.loading;
      _currentTrack = track;

      print('=== Starting playback for track ===');
      print('Track ID: ${track.id}');
      print('Track Name: ${track.name}');

      // Get the access token from secure storage
      var authLocal = _ref.read(authLocalDatasourceProvider);
      var accessTokenFromSecureStorage = await authLocal.getAccessToken();

      print('Access token retrieved: ${accessTokenFromSecureStorage}');

      // Get the signed streaming URL
      final streamUrl = await _streamingApi.getSignedStreamingUrl(track.id);
      _currentStreamUrl = streamUrl;

      print('Obtained streaming URL: $streamUrl');

      // Set the audio source with authorization header
      await _player.setUrl(
        streamUrl,
        headers: {
          'Authorization': 'Bearer ${accessTokenFromSecureStorage ?? ""}',
        },
      );

      // Start playing
      await _player.play();
      _state = AudioPlayerState.playing;

      print('Track loaded and playing successfully');
    } catch (e, stackTrace) {
      print('=== Error playing track ===');
      print('Error: $e');
      print('Stack trace: $stackTrace');
      _state = AudioPlayerState.error;

      // Try to refresh the URL and retry if it's a token issue
      if (e.toString().contains('401') || e.toString().contains('403')) {
        try {
          print('Attempting to refresh stream URL and retry...');
          final newStreamUrl = await _streamingApi.forceRefreshStreamingUrl(
            track.id,
          );
          _currentStreamUrl = newStreamUrl;

          await _player.setUrl(newStreamUrl);
          await _player.play();
          _state = AudioPlayerState.playing;
          print('Successfully retried with refreshed URL');
        } catch (retryError) {
          print('Retry failed: $retryError');
          _state = AudioPlayerState.error;
          rethrow;
        }
      } else {
        rethrow;
      }
    }
  }

  /// Resume playback
  Future<void> play() async {
    try {
      await _player.play();
      _state = AudioPlayerState.playing;
    } catch (e) {
      print('Error resuming playback: $e');
      _state = AudioPlayerState.error;
      rethrow;
    }
  }

  /// Pause playback
  Future<void> pause() async {
    try {
      await _player.pause();
      _state = AudioPlayerState.paused;
    } catch (e) {
      print('Error pausing playback: $e');
      rethrow;
    }
  }

  /// Stop playback and clear current track
  Future<void> stop() async {
    try {
      await _player.stop();
      _currentTrack = null;
      _currentStreamUrl = null;
      _state = AudioPlayerState.idle;
    } catch (e) {
      print('Error stopping playback: $e');
      rethrow;
    }
  }

  /// Seek to a specific position
  Future<void> seek(Duration position) async {
    try {
      await _player.seek(position);
    } catch (e) {
      print('Error seeking: $e');
      rethrow;
    }
  }

  /// Set volume (0.0 to 1.0)
  Future<void> setVolume(double volume) async {
    try {
      await _player.setVolume(volume.clamp(0.0, 1.0));
    } catch (e) {
      print('Error setting volume: $e');
      rethrow;
    }
  }

  /// Set playback speed
  Future<void> setSpeed(double speed) async {
    try {
      await _player.setSpeed(speed);
    } catch (e) {
      print('Error setting speed: $e');
      rethrow;
    }
  }

  /// Set loop mode
  Future<void> setLoopMode(LoopMode loopMode) async {
    try {
      await _player.setLoopMode(loopMode);
    } catch (e) {
      print('Error setting loop mode: $e');
      rethrow;
    }
  }

  /// Toggle loop mode between off and one
  Future<void> toggleLoopMode() async {
    final currentMode = _player.loopMode;
    if (currentMode == LoopMode.off) {
      await setLoopMode(LoopMode.one);
    } else {
      await setLoopMode(LoopMode.off);
    }
  }

  /// Set shuffle mode
  Future<void> setShuffleModeEnabled(bool enabled) async {
    try {
      await _player.setShuffleModeEnabled(enabled);
    } catch (e) {
      print('Error setting shuffle mode: $e');
      rethrow;
    }
  }

  /// Toggle shuffle mode
  Future<void> toggleShuffleMode() async {
    await setShuffleModeEnabled(!_player.shuffleModeEnabled);
  }

  /// Skip to next track (if playlist is implemented)
  Future<void> seekToNext() async {
    try {
      await _player.seekToNext();
    } catch (e) {
      print('Error skipping to next: $e');
      // Silently fail if there's no next track
    }
  }

  /// Skip to previous track (if playlist is implemented)
  Future<void> seekToPrevious() async {
    try {
      await _player.seekToPrevious();
    } catch (e) {
      print('Error skipping to previous: $e');
      // Silently fail if there's no previous track
    }
  }

  /// Get current position
  Duration get currentPosition => _player.position;

  /// Get total duration
  Duration? get duration => _player.duration;

  /// Check if player is currently playing
  bool get isPlaying => _player.playing;

  /// Get current volume
  double get volume => _player.volume;

  /// Get current speed
  double get speed => _player.speed;

  /// Get current loop mode
  LoopMode get loopMode => _player.loopMode;

  /// Get shuffle mode enabled
  bool get shuffleModeEnabled => _player.shuffleModeEnabled;

  /// Dispose the player and clean up resources
  Future<void> dispose() async {
    try {
      // Clear streaming API cache
      if (_currentTrack != null) {
        _streamingApi.clearCachedToken(_currentTrack!.id);
      }

      await _player.dispose();
      _currentTrack = null;
      _currentStreamUrl = null;
      _state = AudioPlayerState.idle;
    } catch (e) {
      print('Error disposing player: $e');
    }
  }

  /// Format duration to MM:SS
  static String formatDuration(Duration? duration) {
    if (duration == null) return '0:00';

    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds.remainder(60);
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
}
