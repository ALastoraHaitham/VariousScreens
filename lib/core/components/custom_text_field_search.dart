import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_colors.dart';

import '../utils/app_fonts.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(color: AppColors.kPrimary2Color,borderRadius: BorderRadius.circular(10),boxShadow: [
        BoxShadow(color: AppColors.kDarkGreyColor,blurRadius: 1,offset: Offset(0,0),),
      ]),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: AppColors.kDarkGreyColor,fontFamily: PrimaryFont,fontWeight: FontWeight.w600),
          prefixIcon: Icon(Icons.search_outlined,color: AppColors.kDarkGreyColor),
          border: InputBorder.none
        )
      ),
    );
  }
}
