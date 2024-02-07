import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:project5/core/utils/app_fonts.dart';
import 'package:project5/featurs/views/main_products_screen.dart';

import '../../core/utils/app_colors.dart';

class BottomNavBarProductsScreen extends StatelessWidget {
  BottomNavBarProductsScreen({super.key});

  PersistentTabController _controller = PersistentTabController(initialIndex: 2);

  List<Widget> _buildScreens() {
    return [
      MainProductsScreen(),
      MainProductsScreen(),
      MainProductsScreen(),
      MainProductsScreen(),
      MainProductsScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.square_list_fill),
        activeColorPrimary: AppColors.kRedColor,
        activeColorSecondary: AppColors.kBlackColor,
        title: "الأخبار",
        textStyle: TextStyle(fontFamily: PrimaryFont,),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.creditcard),
        activeColorPrimary: AppColors.kRedColor,
        activeColorSecondary: AppColors.kBlackColor,
        title: "التذاكر",
        textStyle: TextStyle(fontFamily: PrimaryFont,),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.shopping_cart),
        activeColorPrimary: AppColors.kRedColor,
        activeColorSecondary: AppColors.kBlackColor,
        title: "التذاكر",
        textStyle: TextStyle(fontFamily: PrimaryFont,),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.calendar),
        activeColorPrimary: AppColors.kRedColor,
        activeColorSecondary: AppColors.kBlackColor,
        title: "العمليات",
        textStyle: TextStyle(fontFamily: PrimaryFont,),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        activeColorPrimary: AppColors.kRedColor,
        activeColorSecondary: AppColors.kBlackColor,
        title: "الرئيسية",
        textStyle: TextStyle(fontFamily: PrimaryFont,),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: AppColors.kPrimary2Color, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarHeight: 65,
        navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property.
      ),
    ));
  }
}
