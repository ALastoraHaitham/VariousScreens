import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/components/custom_botton_drawer.dart';
import 'package:project5/core/components/custom_botton_notification.dart';
import 'package:project5/core/components/custom_list_of_container.dart';
import 'package:project5/core/components/custom_round_image.dart';
import 'package:project5/core/utils/app_colors.dart';
import 'package:project5/core/utils/app_fonts.dart';

import '../../core/components/custom_container_choose.dart';
import '../../core/utils/assets_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.kPrimaryColor,
        body: CustomScrollView(slivers: <Widget>[
          SliverToBoxAdapter(
            child: Stack(clipBehavior: Clip.none, children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 2.7,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.kPrimary2Color,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  child: Image(
                    image: AssetImage(ImgAssets.app_bar_background),
                    width: MediaQuery.sizeOf(context).width,
                    fit: BoxFit.cover,
                    color: AppColors.kPrimary4Color.withOpacity(0.201),
                  ),
                ),
              ),
              Positioned(
                  top: MediaQuery.sizeOf(context).height / 40,
                  right: MediaQuery.sizeOf(context).width / 15,
                  child: InkWell(
                    onTap: () {

                    },
                    child: CustomBottonDrawer(),
                  )),
              Positioned(
                  top: MediaQuery.sizeOf(context).height / 40,
                  right: MediaQuery.sizeOf(context).width / 6,
                  child: CustomRoundImage(imageUrl: ImgAssets.users_images_status,maxRadiuse: 20,)),
              Positioned(
                  top: MediaQuery.sizeOf(context).height / 40,
                  right: MediaQuery.sizeOf(context).width / 3.5,
                  child: Text(
                    "مرحباً أحمد 👋",
                    style: TextStyle(
                        fontFamily: PrimaryFont,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  )),
              Positioned(
                  top: MediaQuery.sizeOf(context).height / 40,
                  left: MediaQuery.sizeOf(context).width / 15,
                  child: InkWell(
                    onTap: () {

                    },
                    child: CustomBottonNotification(newMessage: true),
                  )),
              Positioned(
                  top: MediaQuery.sizeOf(context).height / 7,
                  right: MediaQuery.sizeOf(context).width / 12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2.5,
                          child: Text(
                            "إن مانتعلمه بمتعة لن ننساه أبداَ",
                            style: TextStyle(
                                fontFamily: PrimaryFont,
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          )),
                      Padding(
                        padding: EdgeInsets.only(right: MediaQuery.sizeOf(context).width/13),
                        child: CustomContainerChoose(
                          txt1: "تحصيلي",
                          txt2: "قدرات",
                        ),
                      )
                    ],
                  )),
              Positioned(
                  top: MediaQuery.sizeOf(context).height / 3.5,
                  right: MediaQuery.sizeOf(context).width / 12,
                  child: InkWell(
                    onTap: () {

                    },
                    child: Container(
                      height: MediaQuery.sizeOf(context).height / 5,
                      width: MediaQuery.sizeOf(context).width / 1.2,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColors.kPrimary3Color,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 4,
                            child: Text("دورة التحصيل المكثفة",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: PrimaryFont,
                                    color: AppColors.kPrimary2Color,
                                    fontWeight: FontWeight.w700)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("250 ريال",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: PrimaryFont,
                                      color: AppColors.kPrimary4Color,
                                      fontWeight: FontWeight.w700)),
                              Row(
                                children: [
                                  Text("احجز الان",
                                      style: TextStyle(
                                          color: AppColors.kPrimary2Color,
                                          fontFamily: PrimaryFont,
                                          fontWeight: FontWeight.w600)),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: AppColors.kPrimary2Color,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              Positioned(
                  top: MediaQuery.sizeOf(context).height/4,
                  left: 20,
                  child: Image(image: AssetImage(ImgAssets.logo_book),height: 150,)),
            ]),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                      heightFactor: 2,
                      child: Column(children: [
                        Container(
                          height: 50,
                          padding: EdgeInsets.only(right: 10, left: 10),
                          decoration:
                              BoxDecoration(color: AppColors.kPrimary2Color),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.credit_card_outlined,color: AppColors.kRedColor),
                                    SizedBox(width: 5,),
                                    Text("التمارين",
                                        style: TextStyle(
                                            fontFamily: PrimaryFont,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 17)),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Text("عرض الكل",
                                      style: TextStyle(
                                          color: AppColors.kPrimary4Color,
                                          fontFamily: PrimaryFont,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14)),
                                ),
                              ]),
                        ),

                        CustomOfListContainer()
                      ]),
                    ),
                  ));
            }, childCount: 1),
          ),
        ]),
      ),
    ));
  }
}
