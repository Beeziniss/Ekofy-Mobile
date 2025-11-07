import 'package:flutter/material.dart';
import '../../data/models/library_models.dart';

class UserTile extends StatelessWidget {
  final AppUser user;
  final bool isFollowingList;
  final VoidCallback onPressed;

  const UserTile({
    super.key,
    required this.user,
    required this.isFollowingList,
    required this.onPressed,
  });

  String _formatCount(int v) {
    if (v >= 1000000) return '${(v / 1000000).toStringAsFixed(1)}M';
    if (v >= 1000) return '${(v / 1000).toStringAsFixed(1)}K';
    return '$v';
  }

  @override
  Widget build(BuildContext context) {
    final isArtist = user.userType == UserType.artist;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF15151B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF22222A),
          backgroundImage: user.avatarImage == null ? null : AssetImage(user.avatarImage!),
        ),
        title: Text(user.name, style: const TextStyle(color: Colors.white)),
        subtitle: Text(
          '${isArtist ? 'Artist' : 'Listener'} • ${_formatCount(user.followerCount)}',
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: SizedBox(
          height: 44,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF9333EA),
              foregroundColor: Colors.white,
            ),
            child: Text(isFollowingList ? 'Unfollow' : 'Follow back'),
          ),
        ),
      ),
    );
  }
}
