import 'package:flutter/material.dart';
import '../../data/models/library_models.dart';

// Deprecated in favor of horizontal TrackTile for Library lists.
@Deprecated('Use TrackTile with showFavorite or remove favorites entirely')
class TrackCard extends StatelessWidget {
  final Track track;
  final bool isFavorited;
  final VoidCallback onToggleFavorite;
  final VoidCallback onPlay;

  const TrackCard({
    super.key,
    required this.track,
    required this.isFavorited,
    required this.onToggleFavorite,
    required this.onPlay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF15151B),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: track.albumArt == null
                  ? Container(color: const Color(0xFF22222A))
                  : Image.asset(track.albumArt!, fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(color: const Color(0xFF22222A))),
            ),
          ),
          const SizedBox(height: 8),
          Text(track.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 2),
          Text(track.artistName, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.white70, fontSize: 12)),
          const SizedBox(height: 6),
          Row(
            children: [
              IconButton(
                onPressed: onPlay,
                icon: const Icon(Icons.play_arrow, color: Colors.white70),
                tooltip: 'Play',
              ),
              const Spacer(),
              // Favorite removed per new Library spec
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz, color: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }
}
