import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/core/utils/notification.dart';
import 'package:ekofy_mobile/features/home/data/models/menu_enum.dart';
import 'package:ekofy_mobile/features/track/presentation/providers/track_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ekofy_mobile/features/home/presentation/providers/home_providers.dart';

class HomeScreen extends ConsumerStatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const HomeScreen({super.key, required this.scaffoldKey});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final GlobalKey _menuKey = GlobalKey();
  NotificationService notificationService = NotificationService();

  @override
  void initState() {
    super.initState();
    // notificationService.firebaseInit(context);
    // Fetch tracks when screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(trackListProvider.notifier).fetchTracks(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Trigger JWT decoding on init
    ref.watch(decodeJwtOnInitProvider);

    final payload = ref.watch(jwtPayloadProvider);
    final trackListState = ref.watch(trackListProvider);

    if (payload == null) {
      return Scaffold(
        body: Center(
          child: Image.asset(AppImages.loader, gaplessPlayback: true),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        leading: _appBarLeading(),
        actions: [_notification(), _profileAction(payload)],
      ),
      body: trackListState.isLoading
          ? Center(child: Image.asset(AppImages.loader, gaplessPlayback: true))
          : trackListState.error != null
          ? _errorWidget(
              trackListState.error!,
              () => ref.read(trackListProvider.notifier).fetchTracks(10),
            )
          : _homeBodyContent(
              tracks: trackListState.tracks,
              refetch: () =>
                  ref.read(trackListProvider.notifier).fetchTracks(10),
            ),
    );
  }

  Widget _errorWidget(String errorMessage, VoidCallback onRetry) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 60, color: Colors.red),
          const SizedBox(height: 16),
          Text(
            'Error: $errorMessage',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.red),
          ),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
    );
  }

  Widget _buildTracksList(tracks, VoidCallback? refetch) {
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

            return GestureDetector(
              onTap: () {
                // Navigate to track detail
                context.push('${RouteName.trackDetail}/${track.id}');
              },
              child: IntrinsicHeight(
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
                            image: NetworkImage(track.coverImage),
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
                        track.name,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      Text(
                        track.artistNames,
                        style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// Build home body content based on query state
  Widget _homeBodyContent({required tracks, VoidCallback? refetch}) {
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
                  'New releases for you',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // context.push(RouteName.allNewReleases);
                  },
                  child: const Text(
                    'View All',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.purpleIshWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildTracksList(tracks, refetch),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Top Genres',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // context.push(RouteName.allNewReleases);
                  },
                  child: const Text(
                    'View All',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.purpleIshWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _appBarLeading() {
    return IconButton(
      onPressed: () {
        widget.scaffoldKey.currentState?.openDrawer();
      },
      icon: SvgPicture.asset(
        AppVectors.menuIcon,
        width: 35,
        height: 35,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _notification() {
    return GestureDetector(
      onTap: () => context.push(RouteName.notifications),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SvgPicture.asset(
          AppVectors.whiteNotificationIcon,
          width: 30,
          height: 30,
        ),
      ),
    );
  }

  Widget _profileAction(Map<String, dynamic>? payload) {
    return GestureDetector(
      key: _menuKey,
      onTap: () => _showCustomMenu(context, ref),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(payload!['avatarImage']),
        ),
      ),
    );
  }

  void _showCustomMenu(BuildContext context, WidgetRef ref) async {
    final RenderBox button =
        _menuKey.currentContext!.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    final Offset position = button.localToGlobal(
      Offset.zero,
      ancestor: overlay,
    );

    final selected = await showMenu(
      context: context,
      menuPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      elevation: 1,
      color: AppColors.secondaryBackground,
      shadowColor: AppColors.white,
      surfaceTintColor: Colors.transparent,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + button.size.height,
        position.dx,
        position.dy - 20,
      ),
      items: const [
        PopupMenuItem<HomePageMenu>(
          value: HomePageMenu.profile,
          child: Text('Profile'),
        ),
        PopupMenuItem<HomePageMenu>(
          value: HomePageMenu.logout,
          child: Text('Logout'),
        ),
      ],
    );

    if (selected != null) {
      switch (selected) {
        case HomePageMenu.profile:
          if (context.mounted) {
            // Navigate to profile screen
            context.push(RouteName.profile);
          }
          break;
        case HomePageMenu.logout:
          await ref.read(authProvider.notifier).logout();
          if (context.mounted) {
            context.go(RouteName.login);
          }
          break;
      }
    }
  }
}
