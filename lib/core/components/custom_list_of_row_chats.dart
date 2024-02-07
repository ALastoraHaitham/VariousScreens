import 'package:flutter/cupertino.dart';
import 'package:project5/core/components/custom_row_chats.dart';

class CustomListOfRowChats extends StatelessWidget {
  const CustomListOfRowChats({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height/1.7,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          margin: EdgeInsets.only(top: 20,bottom: 15),
          padding: EdgeInsets.only(left: 15,right: 15),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomRowChats();
            },),
        ),
      ),
    );
  }
}
