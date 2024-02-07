import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_colors.dart';

import '../utils/assets_images.dart';

class CustomRoundImageShadow extends StatelessWidget {
  double? maxRadiuse;
  CustomRoundImageShadow({super.key,this.maxRadiuse});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
        BoxShadow(color: AppColors.kPrimary3Color,blurRadius: 60,offset: Offset(5,10)),
        BoxShadow(color: AppColors.kPrimary2Color,offset: Offset(0,0)),
        BoxShadow(color: AppColors.kPrimary2Color,offset: Offset(0,0))
      ]),
      child: CircleAvatar(
        maxRadius: maxRadiuse??30,
        child: Image.asset(ImgAssets.users_images_status,height: 130,width: 130),),
    );
  }
}
