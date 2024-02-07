import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomBottonNotification extends StatelessWidget {
  bool? newMessage;
  CustomBottonNotification({super.key,this.newMessage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height / 25,
          width: MediaQuery.sizeOf(context).width/12,
          decoration: BoxDecoration(
            color: AppColors.kPrimary2Color,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(color: AppColors.kDarkGreyColor,blurRadius: 1,offset: Offset(0,1),),
            ]
          ),
          child: Icon(Icons.notifications,
              color: AppColors.kPrimary4Color, size: 30),
        ),
        if(newMessage == true)
          Positioned(
              top: 5,
              right: 5,
              child: Container(
                decoration: BoxDecoration(color: AppColors.kRedColor,shape: BoxShape.circle,border: Border.all(color: AppColors.kPrimary2Color,width: 2)),
                height: 10,
                width: 10,
              ))
      ],
    );
  }
}
