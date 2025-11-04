import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/features/home/presentation/screens/main_screen.dart';
import 'package:ekofy_mobile/features/home/presentation/screens/request_hub_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavTab extends StatefulWidget {
  const NavTab({super.key});

  @override
  State<StatefulWidget> createState() => _NavTabState();
}

class _NavTabState extends State<NavTab> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TabController? controller;
  int selectTab = 0;

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
          Container(),
          Container(),
          Scaffold(
            backgroundColor: AppColors.primaryBackground,
            body: SingleChildScrollView(child: RequestHubScreen()),
          ),
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
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(5),
      ),
      backgroundColor: AppColors.darkGrey,

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   child: Column(children: [Text('Test'), Text('Just test')]),
          //   decoration: BoxDecoration(color: AppColors.secondaryBackground),
          // ),
          ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hmm... đặt gì ở đây bây giờ?',
                  style: TextStyle(fontSize: 15),
                ),
                // Text('The second', style: TextStyle(fontSize: 15)),
                // Text('The third', style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
