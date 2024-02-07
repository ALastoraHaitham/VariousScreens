import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_colors.dart';
import 'package:project5/core/utils/app_fonts.dart';
import 'package:project5/core/utils/assets_images.dart';

class CustomContainerProducts extends StatelessWidget {
  const CustomContainerProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width/2.5,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(color: AppColors.kPrimary2Color,borderRadius: BorderRadius.circular(20),border: Border.all(color: AppColors.kGreyColor,width: 2),boxShadow: [
        //يتحكم بالظل من فوق واسفل
        BoxShadow(blurRadius: 7,offset: Offset(0,5)),
        //يتحكم بالظل من اليسار
        BoxShadow(color: AppColors.kPrimary2Color,offset: Offset(-1,5)),
        //يتحكم بالظل من اليمين
        BoxShadow(color: AppColors.kPrimary2Color,offset: Offset(3,0)),
      ]),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(color: AppColors.kDarkGreyColor,borderRadius: BorderRadius.circular(20),),
              child: Image.asset(ImgAssets.t_shirt,height: 150,)),
          Text("قميص مباراة الزمالك الأساسي",style: TextStyle(fontFamily: PrimaryFont,fontSize: 13)),
          Row(
            children: [
              Text("640",style: TextStyle(fontFamily: PrimaryFont,color: AppColors.kBlackColor,fontSize: 15,fontWeight: FontWeight.w700)),
              SizedBox(width: 5,),
              Text("ج.م",style: TextStyle(fontFamily: PrimaryFont,color: AppColors.kRedColor,fontSize: 10,fontWeight: FontWeight.w700)),
            ],
          ),
        ],
      ),
    );
  }
}
