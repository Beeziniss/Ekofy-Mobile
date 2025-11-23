import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  //INFO: Header widget consumes mock image paths & display name (no network/loading logic yet).
  final String? bannerImage;
  final String? avatarImage;
  final String displayName;
  final String userId;
  final bool isVerified;
  final VoidCallback onEditBanner;
  final VoidCallback onEditAvatar;

  const ProfileHeaderWidget({
    super.key,
    required this.bannerImage,
    required this.avatarImage,
    required this.displayName,
    required this.userId,
    required this.isVerified,
    required this.onEditBanner,
    required this.onEditAvatar,
  });

  @override
  Widget build(BuildContext context) {
    // Keep layout responsive if needed in future; currently width not required.
    return SliverAppBar(
      pinned: true,
      stretch: true,
      expandedHeight: 220,
      backgroundColor: const Color(0xFF0B0B0E),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            // Banner with gradient fallback
            //INFO: Mock banner fallback when bannerImage is null.
            bannerImage == null
                ? Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFF1D1D25), Color(0xFF121219)],
                      ),
                    ),
                  )
                : Image.network(
                    bannerImage!,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF1D1D25), Color(0xFF121219)],
                        ),
                      ),
                    ),
                  ),
            // Edit banner overlay button
            Positioned(
              right: 12,
              bottom: 12,
              child: Semantics(
                label: 'Change banner',
                button: true,
                child: Material(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: onEditBanner,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.image, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            // Bottom area with avatar and texts
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 36,
                          backgroundColor: const Color(0xFF22222A),
                          backgroundImage: avatarImage == null
                              ? null
                              : NetworkImage(avatarImage!),
                          child: avatarImage == null
                              ? Text(
                                  _initials(displayName),
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : null,
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Semantics(
                            label: 'Change avatar',
                            button: true,
                            child: Material(
                              color: const Color(0xFF9333EA),
                              borderRadius: BorderRadius.circular(16),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(16),
                                onTap: onEditAvatar,
                                child: const Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Icon(
                                    Icons.edit,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            displayName,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            userId,
                            style: const TextStyle(color: Colors.white70),
                          ),
                          const SizedBox(height: 4),
                          if (userId.isNotEmpty)
                            Text(
                              'Verified: ${isVerified ? "Yes" : "No"}',
                              style: const TextStyle(color: Colors.greenAccent),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _initials(String name) {
    final parts = name.trim().split(RegExp(r"\s+"));
    if (parts.isEmpty) return '?';
    final first = parts.first.isNotEmpty ? parts.first[0] : '';
    final last = parts.length > 1 && parts.last.isNotEmpty ? parts.last[0] : '';
    return (first + last).toUpperCase();
  }
}
