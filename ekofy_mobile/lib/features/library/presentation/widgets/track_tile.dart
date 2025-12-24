import 'package:flutter/material.dart';
import '../../data/models/library_models.dart';

class TrackTile extends StatelessWidget {
  final Track track;
  final bool isFavorited;
  final bool showFavorite;
  final VoidCallback? onToggleFavorite;
  final VoidCallback onPlay;

  const TrackTile({
    super.key,
    required this.track,
    this.isFavorited = false,
    this.showFavorite = true,
    this.onToggleFavorite,
    required this.onPlay,
  });

  static String formatDuration(int sec) {
    final m = sec ~/ 60;
    final s = sec % 60;
    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF15151B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            width: 48,
            height: 48,
            child: track.albumArt == null
                ? Container(color: const Color(0xFF22222A))
                : Image.network(
                    track.albumArt!,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        Container(color: const Color(0xFF22222A)),
                  ),
          ),
        ),
        title: Text(track.name, style: const TextStyle(color: Colors.white)),
        subtitle: Text(
          track.artistName,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: onPlay,
              icon: const Icon(Icons.play_arrow, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
