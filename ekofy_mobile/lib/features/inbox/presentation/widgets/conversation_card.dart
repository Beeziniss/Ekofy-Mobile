import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/inbox/data/models/conversation_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ConversationCard extends ConsumerWidget {
  final ConversationItem conversation;
  final VoidCallback onTap;

  const ConversationCard({
    super.key,
    required this.conversation,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final jwtPayload = ref.read(jwtPayloadProvider);
    final currentUserId =
        jwtPayload?['sub'] ?? jwtPayload?['userId'] as String?;

    // Determine which profile to show (the other user's profile)
    final isOwner = conversation.ownerProfile.artistId != currentUserId;
    final displayProfile = isOwner
        ? conversation.otherProfile
        : conversation.ownerProfile;

    final lastMessage = conversation.lastMessage;
    final isUnread = lastMessage?.isReadBy?.contains(currentUserId) == false;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isDark ? AppColors.mediumGrey : Colors.grey.withAlpha(51),
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar
            CircleAvatar(
              radius: 28,
              backgroundColor: AppColors.violet.withOpacity(0.3),
              backgroundImage: displayProfile.avatar != null
                  ? NetworkImage(displayProfile.avatar!)
                  : null,
              child: displayProfile.avatar == null
                  ? Text(
                      displayProfile.nickname?.substring(0, 1).toUpperCase() ??
                          'U',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Name
                      Expanded(
                        child: Text(
                          displayProfile.nickname ?? 'Unknown User',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: isUnread
                                ? FontWeight.bold
                                : FontWeight.w600,
                            color: isDark ? Colors.white : Colors.black,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      // Time
                      if (lastMessage?.sentAt != null)
                        Text(
                          _formatTime(lastMessage!.sentAt!),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: AppColors.grey,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  // Last message
                  Text(
                    lastMessage?.text ?? 'No messages yet',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: isUnread
                          ? FontWeight.w600
                          : FontWeight.normal,
                      color: isUnread
                          ? (isDark ? Colors.white : Colors.black87)
                          : AppColors.grey,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            // Unread indicator
            if (isUnread)
              Container(
                margin: const EdgeInsets.only(left: 8, top: 8),
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: AppColors.violet,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }

  String _formatTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays == 0) {
      // Today - show time
      return DateFormat('HH:mm').format(dateTime);
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else if (difference.inDays < 7) {
      return DateFormat('EEE').format(dateTime);
    } else {
      return DateFormat('MMM d').format(dateTime);
    }
  }
}
