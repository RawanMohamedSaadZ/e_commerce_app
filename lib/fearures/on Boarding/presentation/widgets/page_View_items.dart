import 'package:e_commerce_app/core/constants/constant.dart';
import 'package:e_commerce_app/core/utlis/size_config.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/space_widget.dart';
class PageViewItems extends StatelessWidget {
PageViewItems( {super.key,   required this.image,  required this.title, required this.Subtitle,});

  final String? image;
   final String? title;
   final String? Subtitle;

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     const VerticalSpace(value: 20,),
       SizedBox(
            height: SizeConfig.defaultSize! *30,
           child: Image.asset(image!)),
        Text(title!,
        style: TextStyle(
          fontSize: 20,
          color: Color(0xff0F162C),
          fontWeight: FontWeight.w600,
        ),
          textAlign: TextAlign.left,
        ) ,

        Text(Subtitle!,
          style:
          TextStyle(
            fontFamily: 'PlaywriteAUTAS',
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.w600,

          ),
          textAlign: TextAlign.left,
        ) ,

      ],
    );
  }
}
