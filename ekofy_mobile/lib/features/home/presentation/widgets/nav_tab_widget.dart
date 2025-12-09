import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/providers/theme_provider.dart';
import 'package:ekofy_mobile/features/home/presentation/screens/main_screen.dart';
import 'package:ekofy_mobile/features/library/presentation/screens/library_page.dart';
import 'package:ekofy_mobile/features/request_hub/presentation/screens/public_request/request_hub_screen.dart';
import 'package:ekofy_mobile/features/inbox/presentation/screens/inbox_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class NavTab extends ConsumerStatefulWidget {
  const NavTab({super.key});

  @override
  ConsumerState<NavTab> createState() => _NavTabState();
}

class _NavTabState extends ConsumerState<NavTab>
    with SingleTickerProviderStateMixin {
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: TabBarView(
        controller: controller,
        children: [
          HomeScreen(scaffoldKey: _scaffoldKey),
          const LibraryPage(),
          const RequestHubScreen(),
          const InboxScreen(),
        ],
      ),

      //info: config cho bottom nav
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.secondaryBackground
                  : Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, -10),
            ),
          ],
        ),
        child: BottomAppBar(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: TabBar(
            splashBorderRadius: BorderRadius.circular(6),
            controller: controller,
            indicatorColor: Colors.transparent, // hide indicator below tab
            indicatorWeight: 1,
            // indicatorAnimation: TabIndicatorAnimation.elastic,
            // indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent, // hide padding below appbar
            labelColor: Theme.of(context).brightness == Brightness.dark
                ? AppColors.purpleIshWhite
                : AppColors.deepBlue,
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
                text: 'Hub',
                icon: SvgPicture.asset(
                  selectTab == 2
                      ? AppVectors.hubIconActive
                      : AppVectors.hubIconInactive,
                  width: 25,
                  height: 25,
                ),
              ),
              Tab(
                text: 'Inbox',
                icon: SvgPicture.asset(
                  selectTab == 3
                      ? AppVectors.inboxIconActive
                      : AppVectors.inboxIconInactive,
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
    final themeMode = ref.watch(themeProvider);
    final isLight = themeMode == ThemeMode.light;
    final textColor = isLight ? Colors.black87 : Colors.white;

    return SafeArea(
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
        backgroundColor: isLight ? Colors.white : AppColors.darkGrey,

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 4,
              children: [
                SvgPicture.asset(
                  AppVectors.logo,
                  colorFilter: isLight
                      ? const ColorFilter.mode(Colors.black, BlendMode.srcIn)
                      : null,
                ),
              ],
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(
                Icons.receipt_long,
                color: textColor.withOpacity(0.7),
              ),
              title: Text(
                'Payment History',
                style: TextStyle(color: textColor),
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
              // ignore: deprecated_member_use
              leading: Icon(Icons.wysiwyg, color: textColor.withOpacity(0.7)),
              title: Text(
                'Request History',
                style: TextStyle(color: textColor),
              ),
              onTap: () {
                Navigator.of(context).pop();
                context.push(RouteName.ownRequests);
              },
            ),
            const Divider(height: 1),
            ListTile(
              // ignore: deprecated_member_use
              leading: Icon(Icons.sunny, color: textColor.withOpacity(0.7)),
              title: Text('Light Theme', style: TextStyle(color: textColor)),
              trailing: Switch(
                value: isLight,
                onChanged: (value) {
                  ref.read(themeProvider.notifier).toggleTheme(value);
                },
              ),
              onTap: () {
                ref.read(themeProvider.notifier).toggleTheme(!isLight);
              },
            ),
          ],
        ),
      ),
    );
  }
}
