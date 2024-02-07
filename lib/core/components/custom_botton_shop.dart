import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_colors.dart';

class CustomBottonShope extends StatelessWidget {
  const CustomBottonShope({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(color: AppColors.kPrimary2Color,shape: BoxShape.circle,border: Border.all(color: AppColors.kBlackColor)),
            child: Center(child: Icon(Icons.shopping_basket_outlined),),
          ),
          Positioned(right: 0,
              child: Container(height: 18,width: 18,
          decoration: BoxDecoration(color: AppColors.kRedColor,shape: BoxShape.circle),
          child: Center(child: Text("2",style: TextStyle(color: AppColors.kPrimary2Color,fontSize: 13)),),))
        ],
      ),
    );
  }
}
