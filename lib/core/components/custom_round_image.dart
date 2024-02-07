import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRoundImage extends StatelessWidget {
  double? maxRadiuse;
  String imageUrl;
  CustomRoundImage({super.key,this.maxRadiuse,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,),
      child: CircleAvatar(
        maxRadius: maxRadiuse??30,
        child: Image.asset(imageUrl,height: 130,width: 130),),
    );
  }
}
