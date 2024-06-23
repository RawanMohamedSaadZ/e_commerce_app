import 'package:e_commerce_app/core/constants/constant.dart';
import 'package:e_commerce_app/core/utlis/size_config.dart';
import 'package:e_commerce_app/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

import '../../fearures/Auth/data/Repositories/auth_repo_impl.dart';

class CustomGeneralButton extends StatelessWidget {
   CustomGeneralButton({super.key, this.text, this.onTap});
       final  String? text ;
       final  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
      
        decoration: BoxDecoration(
          color: MainColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child:  Center(
      
          child: Text(
            text!,
            textAlign:  TextAlign.left,
            style:
            TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcons extends StatelessWidget{

   const CustomButtonWithIcons({super.key, this.text, this.image, this.onTap, this.color });
  final String? text ;
  final String? image;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        AuthRepoImpl();
      },
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius:  BorderRadius.circular(8),
          border: Border.all(color: Color(0xff707070)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(image!),
            HoriziontalSpace(value: 0.4),
            Text(text! ,style:  TextStyle(fontSize: 10),
            ),




          ],


        )


      ),


    );


  }



}