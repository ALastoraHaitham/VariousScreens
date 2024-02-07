import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_colors.dart';
import 'package:project5/core/utils/app_fonts.dart';
import 'package:project5/core/utils/assets_images.dart';

class CustomOfListContainer extends StatelessWidget {
  const CustomOfListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 150,
        child: Container(
          padding: EdgeInsets.only(right: 5,left: 5),
          width: MediaQuery.sizeOf(context).width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,itemBuilder: (context, index) {
            return InkWell(
              onTap: () {

              },
              child: Container(
                height: 160,
                width: 120,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: AppColors.kPrimary2Color,borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                SizedBox(
                    height: 80,
                    child: Image(image: AssetImage(ImgAssets.math))),
                Text("الرياضيات",style: TextStyle(fontFamily: PrimaryFont,fontWeight: FontWeight.w700,color: AppColors.kRedColor),)
              ]),),
            );
          },),
        ),
      ),
    );
  }
}
