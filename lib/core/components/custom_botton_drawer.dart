import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomBottonDrawer extends StatelessWidget {
  const CustomBottonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 25,
      width: MediaQuery.sizeOf(context).width/12,
      decoration: BoxDecoration(
          color: AppColors.kPrimary2Color,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(color: AppColors.kDarkGreyColor,blurRadius: 1,offset: Offset(0,1),),
          ]
      ),
      child: Icon(Icons.menu,
          color: AppColors.kPrimary4Color, size: 30),
    );
  }
}
