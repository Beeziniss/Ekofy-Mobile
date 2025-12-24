import 'dart:developer';

import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:go_router/go_router.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/widgets/button/custom_button.dart';
import 'package:ekofy_mobile/features/artist/presentation/providers/artist_provider.dart';
import 'package:ekofy_mobile/features/artist/presentation/providers/artist_state.dart';
import 'package:ekofy_mobile/features/artist/presentation/widgets/artist_package_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ekofy_mobile/gql/queries/generated/track_query.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/playlist_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ekofy_mobile/features/library/presentation/widgets/track_tile.dart';
import 'package:ekofy_mobile/features/library/presentation/widgets/album_card.dart';
import 'package:ekofy_mobile/features/library/presentation/widgets/playlist_card.dart';
import 'package:ekofy_mobile/features/library/data/models/library_models.dart'
    as lib_models;
import 'package:ekofy_mobile/features/track/presentation/providers/track_providers.dart';
import 'package:ekofy_mobile/features/track/data/models/track_model.dart';

class ArtistScreen extends ConsumerStatefulWidget {
  final String artistId;
  const ArtistScreen({super.key, required this.artistId});

  @override
  ConsumerState<ArtistScreen> createState() => _ArtistScreenState();
}

class _ArtistScreenState extends ConsumerState<ArtistScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ArtistState artistState;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(artistProvider.notifier).fetchPackages(widget.artistId);
    });
  }

  @override
  Widget build(BuildContext context) {
    artistState = ref.watch(artistProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0E),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            _artistHeader(), // SliverAppBar bạn đã làm
          ];
        },
        body: Column(
          children: [
            SizedBox(height: 10),
            _followButton(),
            SizedBox(height: 30),
            Material(
              color: const Color(0xFF0B0B0E),
              child: TabBar(
                controller: _tabController,
                isScrollable: false,
                indicatorColor: const Color(0xFF9333EA),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                dividerHeight: 0,
                tabs: const [
                  Tab(text: 'Tracks'),
                  Tab(text: 'Albums'),
                  Tab(text: 'Playlists'),
                  Tab(text: 'Services'),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Tracks Tab
                  Builder(
                    builder: (context) {
                      final artistState = ref.watch(artistProvider);
                      final userId = switch (artistState) {
                        ArtistSuccess(artist: final a) => a?.userId,
                        _ => null,
                      };

                      if (userId == null) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      return Query$TrackInfinite$Widget(
                        options: Options$Query$TrackInfinite(
                          variables: Variables$Query$TrackInfinite(
                            take: 10,
                            skip: 0,
                            artistId: userId,
                          ),
                          fetchPolicy: FetchPolicy.cacheAndNetwork,
                        ),
                        builder: (result, {fetchMore, refetch}) {
                          if (result.isLoading && result.data == null) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (result.hasException) {
                            return Center(
                              child: Text(
                                'Error: ${result.exception.toString()}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          }
                          final tracks = result.parsedData?.tracks?.items ?? [];
                          if (tracks.isEmpty) {
                            return const Center(
                              child: Text(
                                'No tracks found',
                                style: TextStyle(color: Colors.white70),
                              ),
                            );
                          }
                          return ListView.builder(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            itemCount: tracks.length,
                            itemBuilder: (context, index) {
                              final item = tracks[index];
                              final track = lib_models.Track(
                                id: item.id,
                                name: item.name,
                                artistName:
                                    item.mainArtists?.items
                                        ?.map((e) => e.stageName)
                                        .join(', ') ??
                                    '',
                                albumArt: item.coverImage,
                                duration: 0,
                                isFavorited: item.checkTrackInFavorite ?? false,
                              );
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: TrackTile(
                                  track: track,
                                  onPlay: () {
                                    final trackModel = TrackModel(
                                      id: item.id,
                                      name: item.name,
                                      coverImage: item.coverImage,
                                      mainArtistIds: item.mainArtistIds,
                                      mainArtists:
                                          item.mainArtists?.items
                                              ?.map(
                                                (a) => ArtistModel(
                                                  id: a.id,
                                                  stageName: a.stageName,
                                                ),
                                              )
                                              .toList() ??
                                          [],
                                      checkTrackInFavorite:
                                          item.checkTrackInFavorite ?? false,
                                    );
                                    ref
                                        .read(audioPlayerServiceProvider)
                                        .playTrack(trackModel);
                                  },
                                  isFavorited: track.isFavorited,
                                  onToggleFavorite: () {},
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),

                  Builder(
                    builder: (context) {
                      final artistState = ref.watch(artistProvider);
                      final userId = switch (artistState) {
                        ArtistSuccess(artist: final a) => a?.userId,
                        _ => null,
                      };

                      if (userId == null) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      return Query$Albums$Widget(
                    options: Options$Query$Albums(
                      variables: Variables$Query$Albums(
                        take: 5,
                        skip: 0,
                        where: Input$AlbumFilterInput(
                          // Assuming mainArtistIds is used for filtering albums by artist
                          // If this fails, it might be artistId
                          createdBy: Input$StringOperationFilterInput(
                            eq: userId,
                          ),
                          isVisible: Input$BooleanOperationFilterInput(
                            eq: true,
                          ),
                        ),
                      ),
                      fetchPolicy: FetchPolicy.cacheAndNetwork,
                    ),
                    builder: (result, {fetchMore, refetch}) {
                      if (result.isLoading && result.data == null) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (result.hasException) {
                        return Center(
                          child: Text(
                            'Error: ${result.exception.toString()}',
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      }
                      final albums = result.parsedData?.albums?.items ?? [];
                      if (albums.isEmpty) {
                        return const Center(
                          child: Text(
                            'No albums found',
                            style: TextStyle(color: Colors.white70),
                          ),
                        );
                      }
                      return GridView.builder(
                        padding: const EdgeInsets.all(16),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 0.75,
                            ),
                        itemCount: albums.length,
                        itemBuilder: (context, index) {
                          final item = albums[index];
                          final album = lib_models.Album(
                            id: item.id,
                            name: item.name,
                            artistName: '', // Not in query
                            albumArt: item.coverImage,
                            isFavorited: item.checkAlbumInFavorite,
                          );
                          return AlbumCard(
                            album: album,
                            isFavorited: album.isFavorited,
                            onToggleFavorite: () {},
                          );
                        },
                      );
                    },
                  );
                    },
                  ),

                  // Albums Tab
                  

                  // Playlists Tab
                  Builder(
                    builder: (context) {
                      final artistState = ref.watch(artistProvider);
                      if (artistState is! ArtistSuccess ||
                          artistState.artist == null) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      final userId = artistState.artist!.userId;
                      if (userId == null) {
                        return const Center(
                          child: Text(
                            'No playlists available',
                            style: TextStyle(color: Colors.white70),
                          ),
                        );
                      }
                      return Query$PlaylistsPublic$Widget(
                        options: Options$Query$PlaylistsPublic(
                          variables: Variables$Query$PlaylistsPublic(
                            userId: userId,
                            take: 12,
                            skip: 0,
                            name: "",
                          ),
                          fetchPolicy: FetchPolicy.cacheAndNetwork,
                        ),
                        builder: (result, {fetchMore, refetch}) {
                          if (result.isLoading && result.data == null) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (result.hasException) {
                            return Center(
                              child: Text(
                                'Error: ${result.exception.toString()}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          }
                          final playlists =
                              result.parsedData?.playlists?.items ?? [];
                          if (playlists.isEmpty) {
                            return const Center(
                              child: Text(
                                'No playlists found',
                                style: TextStyle(color: Colors.white70),
                              ),
                            );
                          }
                          return GridView.builder(
                            padding: const EdgeInsets.all(16),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 16,
                                  mainAxisSpacing: 16,
                                  childAspectRatio: 0.75,
                                ),
                            itemCount: playlists.length,
                            itemBuilder: (context, index) {
                              final item = playlists[index];
                              final playlist = lib_models.Playlist(
                                id: item.id,
                                name: item.name,
                                coverImage: item.coverImage,
                                isPublic: item.isPublic ?? true,
                                userId: item.userId,
                                isFavorited:
                                    item.checkPlaylistInFavorite ?? false,
                              );
                              return PlaylistCard(
                                playlist: playlist,
                                isPlaying: false,
                                onTogglePlay: () {},
                                onMore: () {},
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                  switch (artistState) {
                    ArtistInitial() || ArtistLoading() => Center(
                      child: Image.asset(
                        AppImages.loader,
                        gaplessPlayback: true,
                      ),
                    ),
                    ArtistFailure(message: final msg) => Center(
                      child: Text(
                        'Error: $msg',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    ArtistSuccess(packages: final packages) =>
                      packages.isEmpty
                          ? const Center(
                              child: Text(
                                'No services available',
                                style: TextStyle(color: Colors.white70),
                              ),
                            )
                          : ListView.builder(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              itemCount: packages.length,
                              itemBuilder: (context, index) {
                                return ArtistPackageCard(
                                  package: packages[index],
                                );
                              },
                            ),
                    // TODO: Handle this case.
                    Object() => throw UnimplementedError(),
                    // TODO: Handle this case.
                    null => throw UnimplementedError(),
                  },
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _artistHeader() {
    final artistState = ref.watch(artistProvider);
    final artist = switch (artistState) {
      ArtistSuccess(artist: final a) => a,
      _ => null,
    };

    return SliverAppBar(
      pinned: true,
      stretch: true,
      expandedHeight: 220,
      backgroundColor: const Color(0xFF0B0B0E),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            artistState is ArtistSuccess &&
                    artistState.artist?.bannerImage == null
                ? Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [AppColors.violet, AppColors.deepBlue],
                      ),
                    ),
                  )
                : Image.network(
                    'https://tse1.mm.bing.net/th/id/OIP.gNWwTsRmIy7efeSBBpiD4AHaEU?cb=ucfimg2&ucfimg=1&w=2500&h=1456&rs=1&pid=ImgDetMain&o=7&rm=3',
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
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black54],
                ),
              ),
            ),

            // Chữ
            Positioned(
              left: 16,
              right: 16,
              bottom: 8,
              child: Text(
                artist?.stageName ?? 'Loading...',
                softWrap: true,
                overflow: TextOverflow.visible,
                maxLines: 3,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _followButton() {
    final artist = switch (artistState) {
      ArtistSuccess(artist: final a) => a,
      _ => null,
    };

    return Padding(
      padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Followers: ${artist?.followerCount ?? 0}'),
          SizedBox(height: 5),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color(0xFF22222A),
                backgroundImage: artist?.avatarImage != null
                    ? NetworkImage(artist!.avatarImage!)
                    : null,
              ),
              SizedBox(width: 16),
              CustomButton(
                title: 'Follow',
                height: 30,
                width: 100,
                fontWeight: FontWeight.w600,
                onPressed: () {},
                gradientColors: [AppColors.deepBlue, AppColors.violet],
              ),
              SizedBox(width: 8),
              Text('|'),
              SizedBox(width: 8),
              IconButton(
                onPressed: () async {
                  if (artist?.userId == null) return;
                  try {
                    final conversationId = await ref
                        .read(inboxApiDatasourceProvider)
                        .addConversationGeneral(artist!.userId!);
                    if (conversationId != null && context.mounted) {
                      context.push('/inbox/$conversationId');
                    }
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Failed to start chat: $e')),
                      );
                    }
                  }
                },
                icon: Icon(Icons.message_rounded, color: Colors.white70),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
