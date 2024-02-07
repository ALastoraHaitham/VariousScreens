import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project5/core/components/custom_container_products.dart';

class CustomListOfProducts extends StatelessWidget {
  const CustomListOfProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.sizeOf(context).height/1.69,
      child: SingleChildScrollView(
        child: Wrap(
          children: [
            ...List.generate(15, (index) => InkWell(
                onTap: () {

                },
                child: CustomContainerProducts()))                   ],
        ),
      ),
    );
  }
}
