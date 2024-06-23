import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constant.dart';
class CustomIndector extends StatelessWidget {
  const CustomIndector({super.key , @required this.dotIndex});
  final int? dotIndex;

  @override
  Widget build(BuildContext context) {
    return  DotsIndicator(
      decorator:  DotsDecorator(
          color: Colors.transparent,
          activeColor: MainColor ,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: MainColor))),
      dotsCount: 3,
      position: dotIndex!,
    );

  }
}
