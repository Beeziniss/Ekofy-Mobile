import 'dart:async';

import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/features/library/presentation/providers/library_provider.dart';
import 'package:ekofy_mobile/features/library/presentation/providers/library_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/library_mock_datasource.dart';
import '../../data/models/library_models.dart';
import 'package:ekofy_mobile/core/widgets/loading/simple_shimmer.dart';
import 'package:ekofy_mobile/core/widgets/search_text_field.dart';
import '../widgets/playlist_card.dart';
import '../widgets/create_playlist_card.dart';
import '../widgets/track_tile.dart';
import '../widgets/album_card.dart';
import '../widgets/artist_card.dart';
import '../widgets/user_tile.dart';

class LibraryPage extends ConsumerStatefulWidget {
  const LibraryPage({super.key});

  @override
  ConsumerState<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends ConsumerState<LibraryPage>
    with SingleTickerProviderStateMixin {
  //INFO: Sử dụng LibraryMockDataSource (mock). Thay bằng Repository/API thật khi backend sẵn sàng.
  final _ds = LibraryMockDataSource();

  late final TabController _tabController;

  // Local UI state per tab
  int _activeTab = 0;
  final _searchCtrls = List.generate(5, (_) => TextEditingController());
  final _searchDebouncers = List<Timer?>.filled(5, null);
  final _isLoading = List.filled(5, false);
  final _hasMore = List.filled(5, true);
  final _page = List.filled(5, 1);
  final _pageSize = 12;

  // Data caches
  List<Playlist> _allPlaylists = [];
  List<Playlist> _visiblePlaylists = [];

  List<Track> _allTracks = [];
  List<Track> _visibleTracks = [];

  List<Album> _allAlbums = [];
  List<Album> _visibleAlbums = [];

  List<Artist> _allArtists = [];
  List<Artist> _visibleArtists = [];

  List<AppUser> _allFollowers = [];
  List<AppUser> _visibleFollowers = [];

  // UI states
  String? _currentlyPlayingPlaylistId;
  // Removed grid mode and favorites in Library per new spec
  final Set<String> _followingArtistIds = {};

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      if (_activeTab != _tabController.index) {
        setState(() => _activeTab = _tabController.index);
      }
    });
    for (var i = 0; i < 5; i++) {
      _searchCtrls[i].addListener(() => _onSearchChanged(i));
    }
    _loadInitial();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(libraryProvider.notifier).fetchArtists();
    });
  }

  @override
  void dispose() {
    for (final t in _searchDebouncers) {
      t?.cancel();
    }
    for (final c in _searchCtrls) {
      c.dispose();
    }
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadInitial() async {
    await Future.wait([
      _loadPlaylists(reset: true),
      _loadTracks(reset: true),
      _loadAlbums(reset: true),
      _loadArtists(reset: true),
      _loadFollowers(reset: true),
    ]);
  }

  void _onSearchChanged(int tab) {
    _searchDebouncers[tab]?.cancel();
    _searchDebouncers[tab] = Timer(const Duration(milliseconds: 300), () {
      switch (tab) {
        case 0:
          _applyPlaylistFilters(resetPage: true);
          break;
        case 1:
          _applyTrackFilters(resetPage: true);
          break;
        case 2:
          _applyAlbumFilters(resetPage: true);
          break;
        case 3:
          _applyArtistFilters(resetPage: true);
          break;
        case 4:
          _applyFollowersFilters(resetPage: true);
          break;
      }
    });
  }

  // ----- Loaders per tab -----
  Future<void> _loadPlaylists({bool reset = false}) async {
    if (reset) {
      _page[0] = 1;
      _hasMore[0] = true;
      setState(() => _isLoading[0] = true);
    }
    //INFO: Gọi dữ liệu mock playlists. Thay bằng Repository/API thật khi triển khai backend.
    final data = await _ds.getPlaylists();
    if (!mounted) return;
    setState(() {
      _allPlaylists = data;
      _applyPlaylistFilters(resetPage: true);
      _isLoading[0] = false;
    });
  }

  void _applyPlaylistFilters({bool resetPage = false}) {
    if (resetPage) _page[0] = 1;
    final q = _searchCtrls[0].text.trim().toLowerCase();
    Iterable<Playlist> list = _allPlaylists;
    if (q.isNotEmpty) {
      list = list.where((e) => e.name.toLowerCase().contains(q));
    }
    final sorted = list.toList();
    final end = (_page[0] * _pageSize).clamp(0, sorted.length);
    _visiblePlaylists = sorted.sublist(0, end);
    _hasMore[0] = end < sorted.length;
    setState(() {});
  }

  void _loadMorePlaylists() async {
    if (!_hasMore[0] || _isLoading[0]) return;
    setState(() => _isLoading[0] = true);
    await Future.delayed(const Duration(milliseconds: 600));
    _page[0] += 1;
    _applyPlaylistFilters();
    setState(() => _isLoading[0] = false);
  }

  Future<void> _loadTracks({bool reset = false}) async {
    if (reset) {
      _page[1] = 1;
      _hasMore[1] = true;
      setState(() => _isLoading[1] = true);
    }
    //INFO: Gọi dữ liệu mock tracks.
    final data = await _ds.getTracks();
    if (!mounted) return;
    setState(() {
      _allTracks = data;
      _applyTrackFilters(resetPage: true);
      _isLoading[1] = false;
    });
  }

  void _applyTrackFilters({bool resetPage = false}) {
    if (resetPage) _page[1] = 1;
    final q = _searchCtrls[1].text.trim().toLowerCase();
    // Only show favorited tracks in the Favorites tab
    Iterable<Track> list = _allTracks.where((e) => e.isFavorited);
    if (q.isNotEmpty) {
      list = list.where(
        (e) =>
            e.name.toLowerCase().contains(q) ||
            e.artistName.toLowerCase().contains(q),
      );
    }
    final sorted = list.toList();
    final end = (_page[1] * _pageSize).clamp(0, sorted.length);
    _visibleTracks = sorted.sublist(0, end);
    _hasMore[1] = end < sorted.length;
    setState(() {});
  }

  void _loadMoreTracks() async {
    if (!_hasMore[1] || _isLoading[1]) return;
    setState(() => _isLoading[1] = true);
    await Future.delayed(const Duration(milliseconds: 600));
    _page[1] += 1;
    _applyTrackFilters();
    setState(() => _isLoading[1] = false);
  }

  Future<void> _loadAlbums({bool reset = false}) async {
    if (reset) {
      _page[2] = 1;
      _hasMore[2] = true;
      setState(() => _isLoading[2] = true);
    }
    //INFO: Gọi dữ liệu mock albums.
    final data = await _ds.getAlbums();
    if (!mounted) return;
    setState(() {
      _allAlbums = data;
      _applyAlbumFilters(resetPage: true);
      _isLoading[2] = false;
    });
  }

  void _applyAlbumFilters({bool resetPage = false}) {
    if (resetPage) _page[2] = 1;
    final q = _searchCtrls[2].text.trim().toLowerCase();
    Iterable<Album> list = _allAlbums;
    if (q.isNotEmpty) {
      list = list.where(
        (e) =>
            e.name.toLowerCase().contains(q) ||
            e.artistName.toLowerCase().contains(q),
      );
    }
    final sorted = list.toList();
    final end = (_page[2] * _pageSize).clamp(0, sorted.length);
    _visibleAlbums = sorted.sublist(0, end);
    _hasMore[2] = end < sorted.length;
    setState(() {});
  }

  void _loadMoreAlbums() async {
    if (!_hasMore[2] || _isLoading[2]) return;
    setState(() => _isLoading[2] = true);
    await Future.delayed(const Duration(milliseconds: 600));
    _page[2] += 1;
    _applyAlbumFilters();
    setState(() => _isLoading[2] = false);
  }

  Future<void> _loadArtists({bool reset = false}) async {
    if (reset) {
      _page[3] = 1;
      _hasMore[3] = true;
      setState(() => _isLoading[3] = true);
    }
    //INFO: Gọi dữ liệu mock artists.
    final data = await _ds.getArtists();
    if (!mounted) return;
    setState(() {
      _allArtists = data;
      _applyArtistFilters(resetPage: true);
      _isLoading[3] = false;
    });
  }

  void _applyArtistFilters({bool resetPage = false}) {
    if (resetPage) _page[3] = 1;
    final q = _searchCtrls[3].text.trim().toLowerCase();
    Iterable<Artist> list = _allArtists;
    if (q.isNotEmpty) {
      list = list.where((e) => e.stageName.toLowerCase().contains(q));
    }
    final sorted = list.toList();
    final end = (_page[3] * _pageSize).clamp(0, sorted.length);
    _visibleArtists = sorted.sublist(0, end);
    _hasMore[3] = end < sorted.length;
    setState(() {});
  }

  void _loadMoreArtists() async {
    if (!_hasMore[3] || _isLoading[3]) return;
    setState(() => _isLoading[3] = true);
    await Future.delayed(const Duration(milliseconds: 600));
    _page[3] += 1;
    _applyArtistFilters();
    setState(() => _isLoading[3] = false);
  }

  Future<void> _loadFollowers({bool reset = false}) async {
    if (reset) {
      _page[4] = 1;
      _hasMore[4] = true;
      setState(() => _isLoading[4] = true);
    }
    //INFO: Gọi dữ liệu mock followers.
    final data = await _ds.getFollowers();
    if (!mounted) return;
    setState(() {
      _allFollowers = data;
      _applyFollowersFilters(resetPage: true);
      _isLoading[4] = false;
    });
  }

  void _applyFollowersFilters({bool resetPage = false}) {
    if (resetPage) _page[4] = 1;
    final q = _searchCtrls[4].text.trim().toLowerCase();
    Iterable<AppUser> list = _allFollowers;
    if (q.isNotEmpty) {
      list = list.where((e) => e.name.toLowerCase().contains(q));
    }
    final sorted = list.toList();
    final end = (_page[4] * _pageSize).clamp(0, sorted.length);
    _visibleFollowers = sorted.sublist(0, end);
    _hasMore[4] = end < sorted.length;
    setState(() {});
  }

  void _loadMoreFollowers() async {
    if (!_hasMore[4] || _isLoading[4]) return;
    setState(() => _isLoading[4] = true);
    await Future.delayed(const Duration(milliseconds: 600));
    _page[4] += 1;
    _applyFollowersFilters();
    setState(() => _isLoading[4] = false);
  }

  // ----- UI -----
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B0B0E),

        title: const Text(
          'Library',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '124 followers | 89 following',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(height: 0, width: 0),
              TabBar(
                controller: _tabController,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                padding: EdgeInsets.zero,

                indicatorPadding: EdgeInsets.zero,

                indicatorColor: const Color(0xFF9333EA),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                tabs: const [
                  Tab(icon: Icon(Icons.queue_music), text: 'Playlist'),
                  Tab(icon: Icon(Icons.favorite), text: 'Favorites'),
                  Tab(icon: Icon(Icons.album), text: 'Albums'),
                  Tab(icon: Icon(Icons.person), text: 'Artists'),
                  Tab(icon: Icon(Icons.groups), text: 'Followers'),
                ],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildPlaylistsTab(context),
          _buildFavoritesTab(context),
          _buildAlbumsTab(context),
          _buildArtistsTab(context),
          _buildFollowersTab(context),
        ],
      ),
    );
  }

  // ----- Playlist Tab -----
  Widget _buildPlaylistsTab(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.pixels >= n.metrics.maxScrollExtent - 120) {
          _loadMorePlaylists();
        }
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadPlaylists(reset: true),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _searchBar(0, hint: 'Search playlists…')),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text(
                  _visiblePlaylists.length == 1
                      ? '1 playlist'
                      : '${_visiblePlaylists.length} playlists',
                  style: const TextStyle(color: Colors.white70),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final showCreate = _searchCtrls[0].text.trim().isEmpty;
                    if (showCreate && index == 0) {
                      return CreatePlaylistCard(
                        onTap: () => _showCreatePlaylistSheet(context),
                      );
                    }
                    final itemIndex = showCreate ? index - 1 : index;
                    if (itemIndex >= _visiblePlaylists.length) {
                      return _playlistSkeleton();
                    }
                    final p = _visiblePlaylists[itemIndex];
                    final isPlaying = _currentlyPlayingPlaylistId == p.id;
                    // favorites hidden; ownership not needed for UI now
                    return PlaylistCard(
                      playlist: p,
                      isPlaying: isPlaying,
                      onTogglePlay: () {
                        setState(() {
                          _currentlyPlayingPlaylistId = isPlaying ? null : p.id;
                        });
                      },
                      onMore: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: const Color(0xFF15151B),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(16),
                            ),
                          ),
                          builder: (_) => SafeArea(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  leading: const Icon(
                                    Icons.link,
                                    color: Colors.white70,
                                  ),
                                  title: const Text(
                                    'Copy link',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Link copied'),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  childCount:
                      (_visiblePlaylists.length + (_isLoading[0] ? 6 : 0)) +
                      (_searchCtrls[0].text.trim().isEmpty ? 1 : 0),
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _gridCols(context),
                  childAspectRatio: 0.9,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: Text(
                    _hasMore[0]
                        ? (_isLoading[0] ? 'Loading more…' : 'Scroll for more')
                        : 'No more items',
                    style: const TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 80)),
          ],
        ),
      ),
    );
  }

  // moved to CreatePlaylistCard widget

  void _showCreatePlaylistSheet(BuildContext context) {
    final nameCtrl = TextEditingController();
    bool isPublic = true;
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF15151B),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: StatefulBuilder(
            builder: (context, setSheetState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create playlist',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: nameCtrl,
                    decoration: InputDecoration(
                      hintText: 'Playlist name',
                      hintStyle: const TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: const Color(0xFF0B0B0E),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFF2C2C2C)),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text(
                        'Public',
                        style: TextStyle(color: Colors.white70),
                      ),
                      const Spacer(),
                      Switch(
                        value: isPublic,
                        onChanged: (v) => setSheetState(() => isPublic = v),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Navigator.pop(context),
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xFF2C2C2C)),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Cancel'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            final name = nameCtrl.text.trim();
                            if (name.isEmpty) return;
                            final newItem = Playlist(
                              id: DateTime.now().millisecondsSinceEpoch
                                  .toString(),
                              name: name,
                              coverImage: null,
                              isPublic: isPublic,
                              userId: 'me',
                              isFavorited: false,
                            );
                            setState(() {
                              _allPlaylists = [newItem, ..._allPlaylists];
                              _applyPlaylistFilters(resetPage: true);
                            });
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF9333EA),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Create'),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  // moved to PlaylistCard widget

  Widget _playlistSkeleton() {
    return _shimmer(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF15151B),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  // ----- Favorites Tab -----
  Widget _buildFavoritesTab(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.pixels >= n.metrics.maxScrollExtent - 120) {
          _loadMoreTracks();
        }
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadTracks(reset: true),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _searchBar(1, hint: 'Search tracks…')),
            if (_visibleTracks.isEmpty && !_isLoading[1])
              SliverFillRemaining(
                hasScrollBody: false,
                child: _emptyFavorites(),
              )
            else ...[
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                sliver: SliverList.builder(
                  itemCount: _visibleTracks.length + (_isLoading[1] ? 6 : 0),
                  itemBuilder: (context, index) {
                    if (index >= _visibleTracks.length) return _trackSkeleton();
                    final t = _visibleTracks[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: TrackTile(
                        track: t,
                        isFavorited: t.isFavorited,
                        showFavorite: true,
                        onToggleFavorite: () {
                          // Toggle to unfavorite and remove from list
                          final idx = _allTracks.indexWhere(
                            (e) => e.id == t.id,
                          );
                          if (idx != -1) {
                            setState(() {
                              _allTracks[idx] = Track(
                                id: t.id,
                                name: t.name,
                                artistName: t.artistName,
                                albumArt: t.albumArt,
                                duration: t.duration,
                                isFavorited: !t.isFavorited,
                              );
                              _applyTrackFilters();
                            });
                          }
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Removed from favorites'),
                              ),
                            );
                          }
                        },
                        onPlay: () {},
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Center(
                    child: Text(
                      _hasMore[1]
                          ? (_isLoading[1]
                                ? 'Loading more…'
                                : 'Scroll for more')
                          : 'No more items',
                      style: const TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  // moved to TrackCard widget

  // moved to TrackTile widget

  Widget _trackSkeleton() => _shimmer(
    child: Container(
      height: 72,
      decoration: BoxDecoration(
        color: const Color(0xFF15151B),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  Widget _emptyFavorites() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.favorite_border, size: 64, color: Colors.white24),
          SizedBox(height: 12),
          Text(
            'No favorites yet',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 6),
          Text(
            'Tap the heart on tracks to add them here.',
            style: TextStyle(color: Colors.white70),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // ----- Albums Tab -----
  Widget _buildAlbumsTab(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.pixels >= n.metrics.maxScrollExtent - 120) {
          _loadMoreAlbums();
        }
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadAlbums(reset: true),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _searchBar(2, hint: 'Search albums…')),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _gridCols(context),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.9,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  if (index >= _visibleAlbums.length) {
                    return _playlistSkeleton();
                  }
                  final a = _visibleAlbums[index];
                  return AlbumCard(album: a, showFavorite: false);
                }, childCount: _visibleAlbums.length + (_isLoading[2] ? 6 : 0)),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: Text(
                    _hasMore[2]
                        ? (_isLoading[2] ? 'Loading more…' : 'Scroll for more')
                        : 'No more items',
                    style: const TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // moved to AlbumCard widget

  // ----- Artists Tab -----
  Widget _buildArtistsTab(BuildContext context) {
    final libraryState = ref.watch(libraryProvider);

    return libraryState.when(
      initial: () => const SizedBox.shrink(),
      loading: () => Center(
        child: Image.asset(AppImages.loader, gaplessPlayback: true),
      ),
      failure: (msg) => Center(
        child: Text('Error: $msg', style: const TextStyle(color: Colors.white)),
      ),
      success: (artists) {
        final q = _searchCtrls[3].text.trim().toLowerCase();
        final visibleArtists = artists
            .where((e) => e.stageName.toLowerCase().contains(q))
            .toList();

        return RefreshIndicator(
          onRefresh: () => ref.read(libraryProvider.notifier).fetchArtists(),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: _searchBar(3, hint: 'Search artists…')),
              if (visibleArtists.isEmpty)
                const SliverFillRemaining(
                  child: Center(
                    child: Text(
                      'No artists found',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                )
              else
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: _gridCols(context),
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 0.95,
                    ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final a = visibleArtists[index];
                      // Since this is "Artists In Library", they are followed.
                      return ArtistCard(
                        artist: a,
                        onToggleFollow: () {
                          ref.read(libraryProvider.notifier).toggleFollow(a.id);
                        },
                      );
                    }, childCount: visibleArtists.length),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  // moved to ArtistCard widget

  // ----- Followers Tab -----
  Widget _buildFollowersTab(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.pixels >= n.metrics.maxScrollExtent - 120) {
          _loadMoreFollowers();
        }
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadFollowers(reset: true),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _searchBar(4, hint: 'Search followers…')),
            SliverList.builder(
              itemCount: _visibleFollowers.length + (_isLoading[4] ? 6 : 0),
              itemBuilder: (context, index) {
                if (index >= _visibleFollowers.length) return _userSkeleton();
                final u = _visibleFollowers[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: UserTile(
                    user: u,
                    isFollowingList: false,
                    onPressed: () {
                      setState(() {
                        final idx = _allFollowers.indexWhere(
                          (e) => e.id == u.id,
                        );
                        if (idx != -1) {
                          _allFollowers[idx] = _allFollowers[idx].copyWith(
                            isFollowingBack: !u.isFollowingBack,
                          );
                        }
                        _applyFollowersFilters();
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Follow back updated')),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // moved to UserTile widget

  Widget _userSkeleton() => _shimmer(
    child: Container(
      height: 72,
      decoration: BoxDecoration(
        color: const Color(0xFF15151B),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  // ----- Common UI -----
  int _gridCols(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    return w >= 700 ? 3 : 2;
  }

  Widget _searchBar(int tabIndex, {required String hint}) {
    final ctrl = _searchCtrls[tabIndex];
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: SearchTextField(
        controller: ctrl,
        hintText: hint,
        onChanged: (_) => _onSearchChanged(tabIndex),
        onClear: () => _onSearchChanged(tabIndex),
      ),
    );
  }

  Widget _shimmer({required Widget child}) => SimpleShimmer(child: child);
}
