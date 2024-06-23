import 'package:e_commerce_app/fearures/on%20Boarding/presentation/on_Boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utlis/size_config.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimtion;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimtion =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    gotToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        const Spacer(),
        FadeTransition(
          opacity: fadingAnimtion!,
          child: const Text(
            'Fruit Market',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
                fontFamily: 'PlaywritePL'),
          ),
        ),
        Image.asset(fit: BoxFit.cover, 'assets/images/WelcomeFruit.jpg')
      ],
    );
  }

  void gotToNextView() {
    Future.delayed(Duration(seconds: 6), () {
      Get.to(() => OnBoardingView(),
          transition: Transition.leftToRightWithFade);
    });
  }
}
