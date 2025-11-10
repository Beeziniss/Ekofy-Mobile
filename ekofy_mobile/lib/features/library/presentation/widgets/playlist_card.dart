import 'package:flutter/material.dart';
import '../../data/models/library_models.dart';
import 'package:ekofy_mobile/core/widgets/button/circle_icon_button.dart';

class PlaylistCard extends StatelessWidget {
  final Playlist playlist;
  final bool isPlaying;
  final VoidCallback onTogglePlay;
  final VoidCallback onMore;

  const PlaylistCard({
    super.key,
    required this.playlist,
    required this.isPlaying,
    required this.onTogglePlay,
    required this.onMore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF15151B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                    child: playlist.coverImage == null
                        ? Container(color: const Color(0xFF22222A))
                        : Image.asset(
                            playlist.coverImage!,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(color: const Color(0xFF22222A)),
                          ),
                  ),
                ),
                Positioned(
                  left: 8,
                  bottom: 8,
                  child: Row(
                    children: [
                      CircleIconButton(
                        icon: isPlaying ? Icons.pause : Icons.play_arrow,
                        onPressed: onTogglePlay,
                      ),
                      const SizedBox(width: 8),
                      // Favorite icon removed per new Library spec
                      const SizedBox(width: 8),
                      CircleIconButton(
                        icon: Icons.more_horiz,
                        onPressed: onMore,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playlist.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: isPlaying ? const Color(0xFF9333EA) : Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  playlist.isPublic ? 'Public' : 'Private',
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
