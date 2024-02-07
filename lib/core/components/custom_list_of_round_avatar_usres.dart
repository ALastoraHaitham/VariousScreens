import 'package:flutter/cupertino.dart';
import 'package:project5/core/components/custom_round_avatar.dart';

import 'custom_botton_add_chats.dart';

class ListOfRoundAvatarUsers extends StatelessWidget {
  const ListOfRoundAvatarUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 55,
        child: Row(
          children: [
            CustomBottonAddChats(),
            Container(
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: CustomRoundAvatar(onLine: true),
                );
              },),
            ),
          ],
        ),
      ),
    );
  }
}
