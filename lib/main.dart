import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project5/featurs/views/bottom_nav_bar_chats_screen.dart';
import 'package:project5/featurs/views/bottom_nav_bar_products_screen.dart';
import 'package:project5/featurs/views/bottom_nav_bar_screen.dart';
import 'package:project5/featurs/views/profile_screen.dart';

import 'core/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBarScreen(),
    );
  }
}