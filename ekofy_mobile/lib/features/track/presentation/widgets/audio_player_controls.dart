import 'package:ekofy_mobile/features/track/presentation/providers/track_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

/// Audio player controls widget with play/pause, skip, shuffle, and repeat buttons
class AudioPlayerControls extends ConsumerWidget {
  final VoidCallback? onPlayPause;
  final VoidCallback? onNext;
  final VoidCallback? onPrevious;
  final VoidCallback? onShuffle;
  final VoidCallback? onRepeat;

  const AudioPlayerControls({
    super.key,
    this.onPlayPause,
    this.onNext,
    this.onPrevious,
    this.onShuffle,
    this.onRepeat,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPlayingAsync = ref.watch(playingStreamProvider);
    final shuffleModeAsync = ref.watch(shuffleModeStreamProvider);
    final loopModeAsync = ref.watch(loopModeStreamProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Shuffle button
        loopModeAsync.when(
          data: (loopMode) => IconButton(
            icon: Icon(
              Icons.repeat,
              color: loopMode != LoopMode.off ? Colors.green : Colors.white,
            ),
            iconSize: 28,
            onPressed: onRepeat,
          ),
          loading: () => IconButton(
            icon: const Icon(Icons.repeat, color: Colors.white),
            iconSize: 28,
            onPressed: onRepeat,
          ),
          error: (_, __) => IconButton(
            icon: const Icon(Icons.repeat, color: Colors.white),
            iconSize: 28,
            onPressed: onRepeat,
          ),
        ),

        // Previous button
        IconButton(
          icon: const Icon(Icons.skip_previous, color: Colors.white),
          iconSize: 36,
          onPressed: onPrevious,
        ),

        // Play/Pause button
        isPlayingAsync.when(
          data: (isPlaying) => Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                color: Colors.black,
              ),
              iconSize: 40,
              onPressed: onPlayPause,
            ),
          ),
          loading: () => Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const SizedBox(
              width: 56,
              height: 56,
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                ),
              ),
            ),
          ),
          error: (_, __) => Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.error_outline, color: Colors.red),
              iconSize: 40,
              onPressed: onPlayPause,
            ),
          ),
        ),

        // Next button
        IconButton(
          icon: const Icon(Icons.skip_next, color: Colors.white),
          iconSize: 36,
          onPressed: onNext,
        ),

        // Repeat button
        shuffleModeAsync.when(
          data: (shuffleEnabled) => IconButton(
            icon: Icon(
              Icons.shuffle,
              color: shuffleEnabled ? Colors.green : Colors.white,
            ),
            iconSize: 28,
            onPressed: onShuffle,
          ),
          loading: () => IconButton(
            icon: const Icon(Icons.shuffle, color: Colors.white),
            iconSize: 28,
            onPressed: onShuffle,
          ),
          error: (_, __) => IconButton(
            icon: const Icon(Icons.shuffle, color: Colors.white),
            iconSize: 28,
            onPressed: onShuffle,
          ),
        ),
      ],
    );
  }
}
