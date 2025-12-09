import 'package:ekofy_mobile/features/track/presentation/providers/track_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ekofy_mobile/features/track/data/datasource/audio_player_service.dart';

/// Progress bar widget showing current position and total duration
class AudioProgressBar extends ConsumerWidget {
  final Function(Duration)? onSeek;

  const AudioProgressBar({super.key, this.onSeek});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final positionAsync = ref.watch(positionStreamProvider);
    final durationAsync = ref.watch(durationStreamProvider);

    return positionAsync.when(
      data: (position) {
        return durationAsync.when(
          data: (duration) {
            final totalDuration = duration ?? Duration.zero;
            final currentPosition = position;

            // Calculate progress value
            final progress = totalDuration.inMilliseconds > 0
                ? currentPosition.inMilliseconds / totalDuration.inMilliseconds
                : 0.0;

            return Column(
              children: [
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 2,
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 6,
                    ),
                    overlayShape: const RoundSliderOverlayShape(
                      overlayRadius: 14,
                    ),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.grey[700],
                    thumbColor: Colors.white,
                  ),
                  child: Slider(
                    value: progress.clamp(0.0, 1.0),
                    onChanged: (value) {
                      if (totalDuration.inMilliseconds > 0) {
                        final newPosition = Duration(
                          milliseconds: (value * totalDuration.inMilliseconds)
                              .round(),
                        );
                        onSeek?.call(newPosition);
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AudioPlayerService.formatDuration(currentPosition),
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                      ),
                      Text(
                        AudioPlayerService.formatDuration(totalDuration),
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          loading: () => _buildLoadingBar(context),
          error: (_, __) => _buildLoadingBar(context),
        );
      },
      loading: () => _buildLoadingBar(context),
      error: (_, __) => _buildLoadingBar(context),
    );
  }

  Widget _buildLoadingBar(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 2,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 14),
            activeTrackColor: Colors.white,
            inactiveTrackColor: Colors.grey[700],
            thumbColor: Colors.white,
          ),
          child: Slider(value: 0.0, onChanged: null),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '0:00',
                style: TextStyle(fontSize: 12, color: Colors.grey[400]),
              ),
              Text(
                '0:00',
                style: TextStyle(fontSize: 12, color: Colors.grey[400]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
