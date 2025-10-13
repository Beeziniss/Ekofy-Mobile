import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);

    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: TabBarView(
        controller: controller,
        children: [Container(), Container(), Container(), Container()],
      ),
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
              fontSize: 15,
            ),
            unselectedLabelColor: AppColors.grey,
            unselectedLabelStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal,
              fontSize: 15,
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
                  width: 28,
                  height: 28,
                ),
              ),
              Tab(
                text: 'Search',
                icon: SvgPicture.asset(
                  selectTab == 2
                      ? AppVectors.searchIconActive
                      : AppVectors.searchIconInactive,
                  width: 28,
                  height: 28,
                ),
              ),
              Tab(
                text: 'Hub',
                icon: SvgPicture.asset(
                  selectTab == 3
                      ? AppVectors.hubIconActive
                      : AppVectors.hubIconInactive,
                  width: 28,
                  height: 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
