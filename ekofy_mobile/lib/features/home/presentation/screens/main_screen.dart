import 'dart:developer';

import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/features/home/data/models/menu_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30), // cach phia tren ra 1 khoang cho no tu nhien
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Demo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                height: 160, // fix cung height bai hat
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 10,
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (context, index) => SizedBox(
                    width: 120, // fix cung width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.music_note,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Muzik, hehe',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Vẫn là demo nhưng có số 2',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                height: 160, // fix cung height bai hat
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 10,
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (context, index) => SizedBox(
                    width: 120, // fix cung width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.music_note,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Muzik, hehe',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'What \'s that',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                height: 160, // fix cung height bai hat
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 10,
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (context, index) => SizedBox(
                    width: 120, // fix cung width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.music_note,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Muzik, hehe',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Vẫn là demo nhưng có số 4',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                height: 160, // fix cung height bai hat
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 10,
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (context, index) => SizedBox(
                    width: 120, // fix cung width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.music_note,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Muzik, hehe',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //info: leading gocs tren ben trai
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
    // return PopupMenuButton<String>(
    //   // onSelected: ,
    //   itemBuilder: (BuildContext context) {
    //     return [
    //       PopupMenuItem(value: 'Profile', child: Text('Profile')),
    //       PopupMenuItem(value: 'Profile', child: Text('Profile')),
    //       PopupMenuItem(value: 'Profile', child: Text('Profile')),
    //     ];
    //   },
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 16),
    //     child: CircleAvatar(
    //       radius: 18,
    //       backgroundImage: AssetImage(AppImages.backgroundLogin),
    //     ),
    //   ),
    // );
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

    //custom menu position
    final selected = await showMenu(
      context: context,
      menuPadding: EdgeInsetsGeometry.symmetric(vertical: 2, horizontal: 2),
      elevation: 1,
      color: AppColors.secondaryBackground,
      shadowColor: AppColors.white,
      surfaceTintColor: Colors.transparent,

      //info: set vi tri cua menu nam duoi avatar
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + button.size.height, //info: display dưới avatar
        position.dx,
        position.dy - 20,
      ),
      items: [
        PopupMenuItem<HomePageMenu>(
          value: HomePageMenu.profile,
          child: Text('Profile'),
        ),
        PopupMenuItem<HomePageMenu>(
          value: HomePageMenu.logout,
          child: Text('Logout'),
        ),
        // PopupMenuItem<String>(
        //   value: 'Tài khoản',
        //   child: Text('Nhìn cái dí đèo'),
        // ),
        // PopupMenuItem<String>(
        //   value: 'Đăng xuất',
        //   child: Text('Đăng xuất')
        // ),
      ],
    );

    if (selected != null) {
      log("Đã chọn: $selected");
    }
  }
}
