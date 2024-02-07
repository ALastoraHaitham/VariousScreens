import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_fonts.dart';

import '../utils/app_colors.dart';

class CustomTextFieldsSearch2 extends StatelessWidget {
  const CustomTextFieldsSearch2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(color: AppColors.kPrimary2Color,borderRadius: BorderRadius.circular(10),boxShadow: [
        BoxShadow(color: AppColors.kDarkGreyColor,blurRadius: 2,offset: Offset(0,0),),
      ]),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
          decoration: InputDecoration(
              hintText: "ابحث عن منتجك هنا",
              hintStyle: TextStyle(fontFamily: PrimaryFont,fontSize: 15),
              suffixIcon: Icon(Icons.search_outlined,color: AppColors.kDarkGreyColor,size: 30),
              border: InputBorder.none
          )
      ),
    );
  }
}
