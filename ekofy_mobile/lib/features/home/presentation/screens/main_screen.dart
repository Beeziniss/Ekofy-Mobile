import 'dart:developer';

import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/features/home/data/models/menu_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainHomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const MainHomePage({super.key, required this.scaffoldKey});

  @override
  State<StatefulWidget> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final GlobalKey _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        backgroundColor: AppColors.primaryBackground,
        leading: _appBarLeading(),
        actions: [_profileAction()],
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
