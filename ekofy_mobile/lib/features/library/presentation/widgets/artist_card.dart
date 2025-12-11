import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/widgets/button/custom_button.dart';
import 'package:ekofy_mobile/features/home/presentation/screens/main_screen.dart';
import 'package:ekofy_mobile/features/payment/presentation/screens/payment_screen.dart';
import 'package:ekofy_mobile/gql/queries/generated/artist_query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArtistCard extends StatelessWidget {
  final Query$ArtistInLibraryQuery$artists$items artist;
  final VoidCallback onToggleFollow;

  const ArtistCard({
    super.key,
    required this.artist,
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
            backgroundImage: artist.avatarImage != null
                ? NetworkImage(artist.avatarImage!)
                : null,
            child: artist.avatarImage == null
                ? const Icon(Icons.person, color: Colors.white)
                : null,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  artist.stageName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              if (artist.isVerified == true) ...[
                const SizedBox(width: 6),
                const Icon(Icons.verified, color: Color(0xFF9333EA), size: 18),
              ],
            ],
          ),
          const SizedBox(height: 2),
          Text(
            'Followers: ${_formatCount(artist.followerCount)}',
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PaymentScreen()),
              // );
              context.push(
                RouteName.artistDetail.replaceFirst(':artistId', artist.id),
              );
            },

            title: 'View Profile',
            height: 40,
            gradientColors: [AppColors.deepBlue, AppColors.violet],
            // child: ElevatedButton(
            //   onPressed: onToggleFollow,
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: AppColors.violet,
            //     foregroundColor: Colors.white,
            //   ),
            //   child: Text('Profile'),
            // ),
          ),
        ],
      ),
    );
  }
}
