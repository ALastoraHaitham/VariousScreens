import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_colors.dart';
import 'package:project5/core/utils/app_fonts.dart';
import 'package:project5/featurs/views/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        activeColor: AppColors.kRedColor,
        color: Colors.grey,
        backgroundColor: AppColors.kPrimary2Color,
        curveSize: 500,
        height: 60,
        items: [
          TabItem(icon: Icons.list,title: 'التجميعات',fontFamily: PrimaryFont),
          TabItem(icon: Icons.shopping_cart_outlined,title: 'المتجر',fontFamily: PrimaryFont),
          TabItem(icon: Icons.assessment,title: 'الإختبارات',fontFamily: PrimaryFont),
        ],
        initialActiveIndex: 1,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ), // bottomNavigationBar: MoltenBottomNavigationBar(
        // ),
        body: [
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
        ][_selectedIndex],
      ),));
  }
}
