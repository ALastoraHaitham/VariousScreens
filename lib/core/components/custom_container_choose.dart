import 'package:flutter/material.dart';
import 'package:project5/core/utils/app_colors.dart';
import 'package:project5/core/utils/app_fonts.dart';

class CustomContainerChoose extends StatefulWidget {
  late String txt1,txt2;
  CustomContainerChoose({super.key,required this.txt1,required this.txt2});

  @override
  State<CustomContainerChoose> createState() => _CustomContainerChooseState();
}

class _CustomContainerChooseState extends State<CustomContainerChoose> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Container(
          height: MediaQuery.sizeOf(context).height/28,
          decoration: BoxDecoration(
              color: AppColors.kPrimary4Color.withOpacity(0.1), borderRadius: BorderRadius.circular(30)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    index = 0;
                    setState(() {

                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width/6,
                    decoration: BoxDecoration(
                        color: index==0?AppColors.kPrimary4Color:Colors.transparent,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(
                        widget.txt1,
                        style: TextStyle(
                            color: index==0?AppColors.kPrimary2Color:AppColors.kPrimary4Color,
                            fontWeight: FontWeight.w600,
                            fontFamily: PrimaryFont,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    index = 1;
                    setState(() {

                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width/6,
                    decoration: BoxDecoration(
                        color: index==1?AppColors.kPrimary4Color:Colors.transparent,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(
                        widget.txt2,
                        style: TextStyle(
                            color: index==1?AppColors.kPrimary2Color:AppColors.kPrimary4Color,
                            fontWeight: FontWeight.w600,
                            fontFamily: PrimaryFont,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),

    ]);
  }
}
