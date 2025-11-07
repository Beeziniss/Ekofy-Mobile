import 'package:flutter/material.dart';
import '../../data/models/library_models.dart';

class ArtistCard extends StatelessWidget {
  final Artist artist;
  final bool isFollowing;
  final VoidCallback onToggleFollow;

  const ArtistCard({
    super.key,
    required this.artist,
    required this.isFollowing,
    required this.onToggleFollow,
  });

  String _formatCount(int v) {
    if (v >= 1000000) return '${(v / 1000000).toStringAsFixed(1)}M';
    if (v >= 1000) return '${(v / 1000).toStringAsFixed(1)}K';
    return '$v';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF15151B),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          CircleAvatar(
            radius: 36,
            backgroundColor: const Color(0xFF22222A),
            backgroundImage: artist.avatarImage == null ? null : AssetImage(artist.avatarImage!),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(artist.stageName, maxLines: 1, overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
              ),
              if (artist.isVerified) const SizedBox(width: 6),
              if (artist.isVerified) const Icon(Icons.verified, color: Color(0xFF9333EA), size: 18),
            ],
          ),
          const SizedBox(height: 2),
          Text(_formatCount(artist.followerCount), style: const TextStyle(color: Colors.white70, fontSize: 12)),
          const Spacer(),
          SizedBox(
            height: 44,
            child: ElevatedButton(
              onPressed: onToggleFollow,
              style: ElevatedButton.styleFrom(
                backgroundColor: isFollowing ? Colors.transparent : const Color(0xFF9333EA),
                foregroundColor: Colors.white,
                side: isFollowing ? const BorderSide(color: Color(0xFF2C2C2C)) : null,
              ),
              child: Text(isFollowing ? 'Unfollow' : 'Follow'),
            ),
          )
        ],
      ),
    );
  }
}
