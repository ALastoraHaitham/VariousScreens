import 'package:flutter/material.dart';
import 'package:project5/core/components/custom_botton_shop.dart';
import 'package:project5/core/components/custom_container_products.dart';
import 'package:project5/core/components/custom_list_of_products.dart';
import 'package:project5/core/components/custom_round_avatar.dart';
import 'package:project5/core/utils/app_colors.dart';
import 'package:project5/core/utils/app_fonts.dart';

import '../../core/components/custom_text_fields_search2.dart';

class MainProductsScreen extends StatelessWidget {
  const MainProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.kPrimary2Color.withOpacity(0.2),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomBottonShope(),
                      Text("المتجر",
                          style: TextStyle(
                              fontFamily: PrimaryFont,
                              fontWeight: FontWeight.w700,
                              fontSize: 20)),
                      CustomRoundAvatar(maxRadiuse: 28, onLine: false),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFieldsSearch2(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "المضاف حديثاً",
                    style: TextStyle(
                        fontFamily: PrimaryFont,
                        fontWeight: FontWeight.w700,
                        color: AppColors.kBlackColor,
                        fontSize: 15),
                  ),
                  SizedBox(height: 10,),
                  CustomListOfProducts()
                ],
              )),
        ),
      ),
    );
  }
}
