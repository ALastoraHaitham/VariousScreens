import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/components/custom_botton_icon.dart';
import 'package:project5/core/components/custom_botton_switch.dart';
import 'package:project5/core/components/custom_divider.dart';
import 'package:project5/core/components/custom_round_image_shadow.dart';
import 'package:project5/core/utils/app_colors.dart';
import 'package:project5/core/utils/app_fonts.dart';
import 'package:project5/core/utils/assets_images.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGreyColor,
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(ImgAssets.app_background_profile),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {

                          },
                          child: Icon(Icons.arrow_back_ios,color: AppColors.kDarkGreyColor,)),
                  Text("settings",style: TextStyle(fontFamily: PrimaryFont,fontWeight: FontWeight.w700,fontSize: 17),),
                      InkWell(onTap: () {

                      },
                        child: Text("Logout",style: TextStyle(color: AppColors.kPrimary3Color,fontFamily: PrimaryFont,fontWeight: FontWeight.w700,fontSize: 17)),),
                    ],
                  ),
                ),
                Positioned(
                    top: MediaQuery.sizeOf(context).height/5.3,
                    right: MediaQuery.sizeOf(context).width/2.5,
                    child: CustomRoundImageShadow(maxRadiuse: 40,))
              ],
            ),
            Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text("ACCOUNT",style: TextStyle(color: AppColors.kDarkGreyColor,fontFamily: PrimaryFont,fontWeight: FontWeight.w700,fontSize: 13),),
                ),
                Container(
                  decoration: BoxDecoration(color: AppColors.kPrimary2Color,borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      CustomButtonIcon(icon: ImgAssets.icon_user, textBtn: "Edit Profile",colorIcon: AppColors.kPrimary3Color,),
                      CustomDivider(),
                      CustomButtonIcon(icon: ImgAssets.icon_user, textBtn: "Location",colorIcon: Colors.teal),
                      CustomDivider(),
                      CustomBottonSwitch(icon: ImgAssets.icon_user, textBtn: "Notification",colorIcon: Colors.amber,),
                      CustomDivider(),
                      CustomButtonIcon(icon: ImgAssets.icon_user, textBtn: "Privacy",colorIcon: Colors.pink),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8,top: 30),
                  child: Text("OTHER",style: TextStyle(color: AppColors.kDarkGreyColor,fontFamily: PrimaryFont,fontWeight: FontWeight.w700,fontSize: 13),),
                ),
                Container(
                  decoration: BoxDecoration(color: AppColors.kPrimary2Color,borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      CustomButtonIcon(icon: ImgAssets.icon_user, textBtn: "Media",colorIcon: Colors.pinkAccent,),
                      CustomDivider(),
                      CustomButtonIcon(icon: ImgAssets.icon_user, textBtn: "Mange Space",colorIcon: Colors.brown),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
