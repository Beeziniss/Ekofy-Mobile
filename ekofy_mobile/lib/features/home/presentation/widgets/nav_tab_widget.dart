import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/features/home/presentation/screens/main_screen.dart';
import 'package:ekofy_mobile/features/library/presentation/screens/library_page.dart';
import 'package:ekofy_mobile/features/request_hub/presentation/screens/public_request/request_hub_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class NavTab extends StatefulWidget {
  const NavTab({super.key});

  @override
  State<StatefulWidget> createState() => _NavTabState();
}

class _NavTabState extends State<NavTab> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TabController? controller;
  int selectTab = 0;
  bool _isSwitched = false;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);

    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var mediaSize = MediaQuery.sizeOf(context);

    return Scaffold(
      key: _scaffoldKey,
      drawer: _sideBar(),
      backgroundColor: AppColors.primaryBackground,
      body: TabBarView(
        controller: controller,
        children: [
          HomeScreen(scaffoldKey: _scaffoldKey),
          const LibraryPage(),
          Container(),
          const RequestHubScreen(),
        ],
      ),

      //info: config cho bottom nav
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          boxShadow: const [
            BoxShadow(
              color: AppColors.secondaryBackground,
              blurRadius: 5,
              offset: Offset(0, -10),
            ),
          ],
        ),
        child: BottomAppBar(
          color: AppColors.primaryBackground,
          child: TabBar(
            splashBorderRadius: BorderRadius.circular(6),
            controller: controller,
            indicatorColor: Colors.transparent, // hide indicator below tab
            indicatorWeight: 1,
            // indicatorAnimation: TabIndicatorAnimation.elastic,
            // indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent, // hide padding below appbar
            labelColor: AppColors.purpleIshWhite,
            labelStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            unselectedLabelColor: AppColors.grey,
            unselectedLabelStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),

            tabs: [
              Tab(
                text: 'Home',
                icon: SvgPicture.asset(
                  selectTab == 0
                      ? AppVectors.homeIconActive
                      : AppVectors.homeIconInactive,
                  width: 30,
                  height: 30,
                ),
              ),
              Tab(
                text: 'Library',
                icon: SvgPicture.asset(
                  selectTab == 1
                      ? AppVectors.libraryIconActive
                      : AppVectors.libraryIconInactive,
                  width: 25,
                  height: 25,
                ),
              ),
              Tab(
                text: 'Search',
                icon: SvgPicture.asset(
                  selectTab == 2
                      ? AppVectors.searchIconActive
                      : AppVectors.searchIconInactive,
                  width: 25,
                  height: 25,
                ),
              ),
              Tab(
                text: 'Hub',
                icon: SvgPicture.asset(
                  selectTab == 3
                      ? AppVectors.hubIconActive
                      : AppVectors.hubIconInactive,
                  width: 25,
                  height: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sideBar() {
    return SafeArea(
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
        backgroundColor: AppColors.darkGrey,

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 4,
              children: [SvgPicture.asset(AppVectors.logo)],
            ),
            SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.receipt_long, color: Colors.white70),
              title: const Text(
                'Payment History',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Close drawer then navigate
                Navigator.of(context).pop();
                context.push(
                  '/transactions',
                ); //INFO: Navigate to UI-only transactions list
              },
            ),
            const Divider(height: 1),
            ListTile(
              leading: const Icon(Icons.wysiwyg, color: Colors.white70),
              title: const Text(
                'Request History',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                context.push(RouteName.ownRequests);
              },
            ),
            const Divider(height: 1),
            ListTile(
              leading: const Icon(Icons.sunny, color: Colors.white70),
              title: const Text(
                'Light Theme',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Switch(
                value: _isSwitched,
                onChanged: (value) {
                  setState(() {
                    _isSwitched = value;
                  });
                },
              ),
              onTap: () {
                // Optional: toggle switch when tapping the whole tile
                setState(() {
                  _isSwitched = !_isSwitched;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
