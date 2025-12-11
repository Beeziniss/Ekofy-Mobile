import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/widgets/button/custom_button.dart';
import 'package:ekofy_mobile/features/artist/presentation/providers/artist_provider.dart';
import 'package:ekofy_mobile/features/artist/presentation/providers/artist_state.dart';
import 'package:ekofy_mobile/features/artist/presentation/widgets/artist_package_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtistScreen extends ConsumerStatefulWidget {
  final String artistId;
  const ArtistScreen({super.key, required this.artistId});

  @override
  ConsumerState<ArtistScreen> createState() => _ArtistScreenState();
}

class _ArtistScreenState extends ConsumerState<ArtistScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

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
    final artistState = ref.watch(artistProvider);

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
                  Container(), // Placeholder for Tracks
                  Container(), // Placeholder for Albums
                  Container(), // Placeholder for Playlists
                  switch (artistState) {
                    ArtistInitial() || ArtistLoading() => const Center(
                      child: CircularProgressIndicator(color: AppColors.violet),
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
    return SliverAppBar(
      pinned: true,
      stretch: true,
      expandedHeight: 220,
      backgroundColor: const Color(0xFF0B0B0E),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            // bannerImage == null
            //     ? Container(
            //         decoration: const BoxDecoration(
            //           gradient: LinearGradient(
            //             begin: Alignment.topLeft,
            //             end: Alignment.bottomRight,
            //             colors: [Color(0xFF1D1D25), Color(0xFF121219)],
            //           ),
            //         ),
            //       )
            //     :
            Image.network(
              'https://wallpaperaccess.com/full/1556608.jpg',
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
                'Alabastar KPOP',
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Followers: 1234'),
          SizedBox(height: 5),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color(0xFF22222A),
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
              Icon(Icons.message_rounded, color: Colors.white70),
            ],
          ),
        ],
      ),
    );
  }
}
