import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/components/custom_round_avatar.dart';
import 'package:project5/core/utils/app_colors.dart';

import '../utils/app_fonts.dart';

class CustomRowChats extends StatelessWidget {
  const CustomRowChats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {

      },
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("09:29pm",style: TextStyle(color: AppColors.kDarkGreyColor,fontFamily: PrimaryFont,fontSize: 13,fontWeight: FontWeight.w700)),
        ],
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        Text("Haitham ALNamer",style: TextStyle(fontFamily: PrimaryFont,fontSize: 18,fontWeight: FontWeight.w700)),
        Text("Hello, I am Haitham...",style: TextStyle(fontFamily: PrimaryFont,fontSize: 15,color: AppColors.kDarkGreyColor,overflow: TextOverflow.ellipsis)),
      ]),
      leading: CustomRoundAvatar(maxRadiuse: 25,onLine: false),
    );
  }
}
