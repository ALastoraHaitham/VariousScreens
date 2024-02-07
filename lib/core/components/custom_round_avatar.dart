import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_colors.dart';
import 'package:project5/core/utils/assets_images.dart';

class CustomRoundAvatar extends StatelessWidget {
  double? maxRadiuse;
  bool onLine;
  CustomRoundAvatar({super.key,this.maxRadiuse,required this.onLine});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          maxRadius: maxRadiuse??30,
          child: Image.asset(ImgAssets.users_images_status,height: 130,width: 130),),
        if(onLine == true)
        Positioned(
            bottom: 2,
            right: 5,
            child: Container(
              decoration: BoxDecoration(color: AppColors.kGreenOnlineColor,shape: BoxShape.circle,border: Border.all(color: AppColors.kPrimary2Color,width: 2)),
              height: 15,
              width: 15,
            ))
      ],
    );
  }
}
