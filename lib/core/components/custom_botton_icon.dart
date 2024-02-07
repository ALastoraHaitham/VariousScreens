import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_colors.dart';
import 'package:project5/core/utils/app_fonts.dart';

class CustomButtonIcon extends StatelessWidget {
  Color? colorBtn,colorIcon,colorText;
  String icon,textBtn;
  double? sizeIcon,sizeText,reduisBtn;
  CustomButtonIcon({super.key,this.colorBtn, required this.icon, required this.textBtn, this.sizeIcon,this.colorIcon,this.colorText,this.sizeText,this.reduisBtn});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: colorBtn??AppColors.kPrimary2Color,borderRadius: BorderRadius.circular(reduisBtn??10)),
      child: ListTile(
        leading: Image.asset(icon,height: sizeIcon??20,color: colorIcon??AppColors.kBlackColor),
        title: Text(textBtn,style: TextStyle(color: colorText??AppColors.kBlackColor,fontFamily: PrimaryFont,fontWeight: FontWeight.w600,fontSize: sizeText??19)),
      ),
    );
  }
}
