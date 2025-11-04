import 'dart:developer';

import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/features/home/data/models/menu_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const HomeScreen({super.key, required this.scaffoldKey});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        leading: _appBarLeading(),
        actions: [_profileAction()],
      ),
      body: Query(
        options: QueryOptions(
          document: gql('''
            query CombinedQuery(
            ) {
              tracks(take: 10) {
                items {
                  id
                  name
                  mainArtistIds
                  coverImage
                }
              }
              artists {
                items {
                  id
                  stageName
                }
              }
            }
          '''),
          variables: const {'take': 10},
        ),
        builder: (result, {refetch, fetchMore}) {
          // Loading
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          // Error
          if (result.hasException) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 60, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(
                    'Error: ${result.exception.toString()}',
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

          // Parse data
          final tracks =
              (result.data?['tracks']['items'] as List?)
                  ?.map((track) {
                    final artistIds = List<String>.from(
                      track['mainArtistIds'] ?? [],
                    );
                    final artistNames =
                        (result.data?['artists']['items'] as List?)
                            ?.where(
                              (artist) => artistIds.contains(artist['id']),
                            )
                            .map((artist) => artist['stageName'] as String)
                            .toList();
                    return {
                      'id': track['id'],
                      'name': track['name'],
                      'coverImage': track['coverImage'],
                      'artistNames': artistNames,
                    };
                  })
                  .whereType<Map<String, dynamic>>()
                  .toList() ??
              [];

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
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildTracksList(tracks, refetch),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildTracksList(
    List<Map<String, dynamic>> tracks,
    VoidCallback? refetch,
  ) {
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
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    if (track['artistNames'] != null &&
                        track['artistNames'].isNotEmpty)
                      Text(
                        '${track['artistNames'].join(', ')}',
                        style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
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

  Widget _profileAction() {
    return GestureDetector(
      key: _menuKey,
      onTap: () => _showCustomMenu(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(AppImages.backgroundLogin),
        ),
      ),
    );
  }

  void _showCustomMenu(BuildContext context) async {
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
      log("Đã chọn: $selected");
    }
  }
}
