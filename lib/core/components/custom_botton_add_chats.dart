import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_colors.dart';

class CustomBottonAddChats extends StatelessWidget {
  const CustomBottonAddChats({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: CircleAvatar(
        maxRadius: 30,
        backgroundColor: AppColors.kPrimary3Color.withOpacity(0.3),
        child: Icon(Icons.add,color: AppColors.kPrimary3Color,size: 30),),
    );
  }
}
