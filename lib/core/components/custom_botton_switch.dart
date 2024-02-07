import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

import '../utils/app_colors.dart';
import '../utils/app_fonts.dart';

class CustomBottonSwitch extends StatefulWidget {
  Color? colorBtn,colorIcon,colorText;
  String icon,textBtn;
  double? sizeIcon,sizeText;
  CustomBottonSwitch({super.key,this.colorBtn, required this.icon, required this.textBtn, this.sizeIcon,this.colorIcon,this.colorText,this.sizeText});

  @override
  State<CustomBottonSwitch> createState() => _CustomBottonSwitchState();
}

class _CustomBottonSwitchState extends State<CustomBottonSwitch> {
  final _controller = ValueNotifier<bool>(true);
  bool valueSwitch = true;
  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        if (_controller.value) {
          valueSwitch = true;
        } else {
          valueSwitch = false;
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: widget.colorBtn??AppColors.kPrimary2Color,),
      child: ListTile(
        leading: Image.asset(widget.icon,height: widget.sizeIcon??20,color: widget.colorIcon??AppColors.kBlackColor),
        title: Text(widget.textBtn,style: TextStyle(color: widget.colorText??AppColors.kBlackColor,fontFamily: PrimaryFont,fontWeight: FontWeight.w600,fontSize: widget.sizeText??19)),
        trailing: AdvancedSwitch(
          controller: _controller,
          thumb: ValueListenableBuilder<bool>(
            valueListenable: _controller,
            builder: (_, value, __) {
              return Icon(
                  value ? Icons.circle : Icons.circle,color: AppColors.kPrimary2Color,);
            },
          ),
        ),
      ),
    );
  }
}
