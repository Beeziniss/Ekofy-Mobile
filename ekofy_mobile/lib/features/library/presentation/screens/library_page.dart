import 'dart:async';

import 'package:flutter/material.dart';

import '../../data/datasources/library_mock_datasource.dart';
import '../../data/models/library_models.dart';
import 'package:ekofy_mobile/core/widgets/loading/simple_shimmer.dart';
import 'package:ekofy_mobile/core/widgets/search_text_field.dart';
import '../widgets/playlist_card.dart';
import '../widgets/create_playlist_card.dart';
import '../widgets/track_card.dart';
import '../widgets/track_tile.dart';
import '../widgets/album_card.dart';
import '../widgets/artist_card.dart';
import '../widgets/user_tile.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>
    with SingleTickerProviderStateMixin {
  //INFO: Sử dụng LibraryMockDataSource (mock). Thay bằng Repository/API thật khi backend sẵn sàng.
  final _ds = LibraryMockDataSource();

  late final TabController _tabController;

  // Local UI state per tab
  int _activeTab = 0;
  final _searchCtrls = List.generate(6, (_) => TextEditingController());
  final _searchDebouncers = List<Timer?>.filled(6, null);
  final _isLoading = List.filled(6, false);
  final _hasMore = List.filled(6, true);
  final _page = List.filled(6, 1);
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

  List<AppUser> _allFollowing = [];
  List<AppUser> _visibleFollowing = [];

  // UI states
  String? _currentlyPlayingPlaylistId;
  final Set<String> _favoritedPlaylistIds = {};
  bool _favoritesGridMode = true;
  final Set<String> _favoritedTrackIds = {};
  final Set<String> _favoritedAlbumIds = {};
  final Set<String> _followingArtistIds = {};

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(() {
      if (_activeTab != _tabController.index) {
        setState(() => _activeTab = _tabController.index);
      }
    });
    for (var i = 0; i < 6; i++) {
      _searchCtrls[i].addListener(() => _onSearchChanged(i));
    }
    _loadInitial();
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
      _loadFollowing(reset: true),
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
          _applyFollowingFilters(resetPage: true);
          break;
        case 5:
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
    Iterable<Track> list = _allTracks;
    if (q.isNotEmpty) {
      list = list.where((e) => e.name.toLowerCase().contains(q) || e.artistName.toLowerCase().contains(q));
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
      list = list.where((e) => e.name.toLowerCase().contains(q) || e.artistName.toLowerCase().contains(q));
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
      _page[5] = 1;
      _hasMore[5] = true;
      setState(() => _isLoading[5] = true);
    }
    //INFO: Gọi dữ liệu mock followers.
    final data = await _ds.getFollowers();
    if (!mounted) return;
    setState(() {
      _allFollowers = data;
      _applyFollowersFilters(resetPage: true);
      _isLoading[5] = false;
    });
  }

  void _applyFollowersFilters({bool resetPage = false}) {
    if (resetPage) _page[5] = 1;
    final q = _searchCtrls[5].text.trim().toLowerCase();
    Iterable<AppUser> list = _allFollowers;
    if (q.isNotEmpty) {
      list = list.where((e) => e.name.toLowerCase().contains(q));
    }
    final sorted = list.toList();
    final end = (_page[5] * _pageSize).clamp(0, sorted.length);
    _visibleFollowers = sorted.sublist(0, end);
    _hasMore[5] = end < sorted.length;
    setState(() {});
  }

  void _loadMoreFollowers() async {
    if (!_hasMore[5] || _isLoading[5]) return;
    setState(() => _isLoading[5] = true);
    await Future.delayed(const Duration(milliseconds: 600));
    _page[5] += 1;
    _applyFollowersFilters();
    setState(() => _isLoading[5] = false);
  }

  Future<void> _loadFollowing({bool reset = false}) async {
    if (reset) {
      _page[4] = 1;
      _hasMore[4] = true;
      setState(() => _isLoading[4] = true);
    }
    //INFO: Gọi dữ liệu mock following.
    final data = await _ds.getFollowing();
    if (!mounted) return;
    setState(() {
      _allFollowing = data;
      _applyFollowingFilters(resetPage: true);
      _isLoading[4] = false;
    });
  }

  void _applyFollowingFilters({bool resetPage = false}) {
    if (resetPage) _page[4] = 1;
    final q = _searchCtrls[4].text.trim().toLowerCase();
    Iterable<AppUser> list = _allFollowing;
    if (q.isNotEmpty) {
      list = list.where((e) => e.name.toLowerCase().contains(q));
    }
    final sorted = list.toList();
    final end = (_page[4] * _pageSize).clamp(0, sorted.length);
    _visibleFollowing = sorted.sublist(0, end);
    _hasMore[4] = end < sorted.length;
    setState(() {});
  }

  void _loadMoreFollowing() async {
    if (!_hasMore[4] || _isLoading[4]) return;
    setState(() => _isLoading[4] = true);
    await Future.delayed(const Duration(milliseconds: 600));
    _page[4] += 1;
    _applyFollowingFilters();
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
        elevation: 0,
        title: const Text('Library', style: TextStyle(fontWeight: FontWeight.bold)),
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
                  style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white70),
                ),
              ),
              const SizedBox(height: 5),
              TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorColor: const Color(0xFF9333EA),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                tabs: const [
                  Tab(icon: Icon(Icons.queue_music), text: 'Playlist'),
                  Tab(icon: Icon(Icons.favorite), text: 'Favorites'),
                  Tab(icon: Icon(Icons.album), text: 'Albums'),
                  Tab(icon: Icon(Icons.person), text: 'Artists'),
                  Tab(icon: Icon(Icons.person_add_alt_1), text: 'Following'),
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
          _buildFollowingTab(context),
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
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                      return CreatePlaylistCard(onTap: () => _showCreatePlaylistSheet(context));
                    }
                    final itemIndex = showCreate ? index - 1 : index;
                    if (itemIndex >= _visiblePlaylists.length) {
                      return _playlistSkeleton();
                    }
                    final p = _visiblePlaylists[itemIndex];
                    final isPlaying = _currentlyPlayingPlaylistId == p.id;
                    final isFavorited = _favoritedPlaylistIds.contains(p.id);
                    final isOwn = p.userId == 'me';
                    return PlaylistCard(
                      playlist: p,
                      isPlaying: isPlaying,
                      isFavorited: isFavorited,
                      canFavorite: p.isPublic && !isOwn,
                      onTogglePlay: () {
                        setState(() {
                          _currentlyPlayingPlaylistId = isPlaying ? null : p.id;
                        });
                      },
                      onToggleFavorite: () {
                        setState(() {
                          if (isFavorited) {
                            _favoritedPlaylistIds.remove(p.id);
                          } else {
                            _favoritedPlaylistIds.add(p.id);
                          }
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(isFavorited ? 'Removed from favorites' : 'Added to favorites')),
                        );
                      },
                      onMore: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: const Color(0xFF15151B),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                          ),
                          builder: (_) => SafeArea(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.link, color: Colors.white70),
                                  title: const Text('Copy link', style: TextStyle(color: Colors.white)),
                                  onTap: () {
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Link copied')),
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
                  childCount: (_visiblePlaylists.length + (_isLoading[0] ? 6 : 0)) +
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
                  const Text('Create playlist',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
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
                      const Text('Public', style: TextStyle(color: Colors.white70)),
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
                              id: DateTime.now().millisecondsSinceEpoch.toString(),
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
                  )
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
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Expanded(child: _searchBar(1, hint: 'Search favorites…')),
                  IconButton(
                    onPressed: () => setState(() => _favoritesGridMode = !_favoritesGridMode),
                    icon: Icon(_favoritesGridMode ? Icons.view_list : Icons.grid_view, color: Colors.white70),
                  )
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              sliver: _favoritesGridMode
                  ? SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: _gridCols(context),
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 1.2,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index >= _visibleTracks.length) return _playlistSkeleton();
                          final t = _visibleTracks[index];
                          final isFav = _favoritedTrackIds.contains(t.id);
                          return TrackCard(
                            track: t,
                            isFavorited: isFav,
                            onToggleFavorite: () {
                              setState(() {
                                if (isFav) {
                                  _favoritedTrackIds.remove(t.id);
                                } else {
                                  _favoritedTrackIds.add(t.id);
                                }
                              });
                            },
                            onPlay: () {},
                          );
                        },
                        childCount: _visibleTracks.length + (_isLoading[1] ? 6 : 0),
                      ),
                    )
                  : SliverList.builder(
                      itemCount: _visibleTracks.length + (_isLoading[1] ? 6 : 0),
                      itemBuilder: (context, index) {
                        if (index >= _visibleTracks.length) return _trackSkeleton();
                        final t = _visibleTracks[index];
                        final isFav = _favoritedTrackIds.contains(t.id);
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: TrackTile(
                            track: t,
                            isFavorited: isFav,
                            onToggleFavorite: () {
                              setState(() {
                                if (isFav) {
                                  _favoritedTrackIds.remove(t.id);
                                } else {
                                  _favoritedTrackIds.add(t.id);
                                }
                              });
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
                        ? (_isLoading[1] ? 'Loading more…' : 'Scroll for more')
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
                  if (index >= _visibleAlbums.length) return _playlistSkeleton();
                  final a = _visibleAlbums[index];
                  final isFav = _favoritedAlbumIds.contains(a.id);
                  return AlbumCard(
                    album: a,
                    isFavorited: isFav,
                    onToggleFavorite: () => setState(() {
                      if (isFav) {
                        _favoritedAlbumIds.remove(a.id);
                      } else {
                        _favoritedAlbumIds.add(a.id);
                      }
                    }),
                  );
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
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.pixels >= n.metrics.maxScrollExtent - 120) _loadMoreArtists();
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadArtists(reset: true),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _searchBar(3, hint: 'Search artists…')),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _gridCols(context),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.95,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index >= _visibleArtists.length) return _playlistSkeleton();
                    final a = _visibleArtists[index];
                    final isFollowing = _followingArtistIds.contains(a.id);
                    return ArtistCard(
                      artist: a,
                      isFollowing: isFollowing,
                      onToggleFollow: () => setState(() {
                        if (isFollowing) {
                          _followingArtistIds.remove(a.id);
                        } else {
                          _followingArtistIds.add(a.id);
                        }
                      }),
                    );
                  },
                  childCount: _visibleArtists.length + (_isLoading[3] ? 6 : 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // moved to ArtistCard widget

  // ----- Following Tab -----
  Widget _buildFollowingTab(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.pixels >= n.metrics.maxScrollExtent - 120) _loadMoreFollowing();
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadFollowing(reset: true),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _searchBar(4, hint: 'Search following…')),
            SliverList.builder(
              itemCount: _visibleFollowing.length + (_isLoading[4] ? 6 : 0),
              itemBuilder: (context, index) {
                if (index >= _visibleFollowing.length) return _userSkeleton();
                final u = _visibleFollowing[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: UserTile(
                    user: u,
                    isFollowingList: true,
                    onPressed: () {
                      setState(() {
                        _allFollowing = _allFollowing.where((e) => e.id != u.id).toList();
                        _applyFollowingFilters();
                      });
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Unfollowed')));
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

  // ----- Followers Tab -----
  Widget _buildFollowersTab(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.pixels >= n.metrics.maxScrollExtent - 120) _loadMoreFollowers();
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadFollowers(reset: true),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _searchBar(5, hint: 'Search followers…')),
            SliverList.builder(
              itemCount: _visibleFollowers.length + (_isLoading[5] ? 6 : 0),
              itemBuilder: (context, index) {
                if (index >= _visibleFollowers.length) return _userSkeleton();
                final u = _visibleFollowers[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: UserTile(
                    user: u,
                    isFollowingList: false,
                    onPressed: () {
                      setState(() {
                        final idx = _allFollowers.indexWhere((e) => e.id == u.id);
                        if (idx != -1) {
                          _allFollowers[idx] = _allFollowers[idx].copyWith(isFollowingBack: !u.isFollowingBack);
                        }
                        _applyFollowersFilters();
                      });
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Follow back updated')));
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
