 import 'package:e_commerce_app/core/utlis/size_config.dart';
import 'package:flutter/material.dart';

class HoriziontalSpace extends StatelessWidget {
   const HoriziontalSpace({super.key, this.value});
   final double? value;
 
   @override
   Widget build(BuildContext context) {
     return SizedBox(

       width: SizeConfig.defaultSize! * value!,
     );

   }
 }

 class VerticalSpace extends StatelessWidget {
   const VerticalSpace({super.key, required this.value});
   final double? value;

   @override
   Widget build(BuildContext context) {
     return SizedBox(

       height: SizeConfig.defaultSize! * value!,
     );

   }
 }

 