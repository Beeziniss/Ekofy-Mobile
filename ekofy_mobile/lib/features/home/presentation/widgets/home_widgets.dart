import 'package:flutter/material.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';

class TrackCard extends StatelessWidget {
  final Map<String, dynamic> track;

  const TrackCard({super.key, required this.track});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SizedBox(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(track['coverImage']),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Icon(
                Icons.music_note,
                size: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              track['name'],
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            if (track['artistNames'] != null && track['artistNames'].isNotEmpty)
              Text(
                '${track['artistNames'].join(', ')}',
                style: TextStyle(fontSize: 11, color: Colors.grey[600]),
              ),
          ],
        ),
      ),
    );
  }
}

class TracksList extends StatelessWidget {
  final List<Map<String, dynamic>> tracks;
  final VoidCallback? refetch;

  const TracksList({super.key, required this.tracks, this.refetch});

  @override
  Widget build(BuildContext context) {
    if (tracks.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              const Text('No tracks available'),
              TextButton(onPressed: refetch, child: const Text('Refresh')),
            ],
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 190,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: tracks.length,
          separatorBuilder: (_, __) => const SizedBox(width: 12),
          itemBuilder: (context, index) {
            final track = tracks[index];
            return TrackCard(track: track);
          },
        ),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leading;
  final Widget? profileAction;

  const HomeAppBar({super.key, required this.leading, this.profileAction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryBackground,
      leading: leading,
      actions: profileAction != null ? [profileAction!] : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class HomeBodyContent extends StatelessWidget {
  final List<Map<String, dynamic>> tracks;
  final VoidCallback? refetch;
  final bool isLoading;
  final bool hasException;
  final String? errorMessage;

  const HomeBodyContent({
    super.key,
    required this.tracks,
    this.refetch,
    this.isLoading = false,
    this.hasException = false,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (hasException) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 60, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              'Error: ${errorMessage ?? 'Unknown error'}',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => refetch?.call(),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tracks',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          TracksList(tracks: tracks, refetch: refetch),
        ],
      ),
    );
  }
}
