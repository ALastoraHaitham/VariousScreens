import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/components/custom_list_of_round_avatar_usres.dart';
import 'package:project5/core/components/custom_list_of_row_chats.dart';
import 'package:project5/core/components/custom_text_field_search.dart';
import 'package:project5/core/utils/app_colors.dart';
import 'package:project5/core/utils/app_fonts.dart';

class AllChatsScreen extends StatelessWidget {
  const AllChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kDarkBlueColor,
      body: SafeArea(child:Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(color: AppColors.kPrimary2Color,borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        child: SingleChildScrollView(
          child: Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: AppColors.kGreyColor,borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Messages",style: TextStyle(fontFamily: PrimaryFont,fontWeight: FontWeight.w700,fontSize: 22)),
                          PopupMenuButton(
                            color: AppColors.kDarkGreyColor,
                            itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                child: Text("Add"),
                                onTap: () async{
                                  bool result = await showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(title: Text(""),);
                                    },
                                  );
                                },
                              ),
                            ];
                          },)
                        ],),
                      SizedBox(height: 10,),
                      ListOfRoundAvatarUsers(),
                      SizedBox(height: 30,),
                      CustomTextFieldSearch(),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
                CustomListOfRowChats()
              ],
            )
          ]),
        ),
      )),
    );
  }
}
