import 'package:e_commerce_app/core/constants/constant.dart';
import 'package:e_commerce_app/fearures/splash/presentation/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MainColor,
      body: SplashBody(),
    );
  }
}
