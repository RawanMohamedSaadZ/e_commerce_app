import 'package:e_commerce_app/fearures/on%20Boarding/presentation/widgets/custom_indector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utlis/size_config.dart';
import '../../../../core/widgets/custom_Button.dart';
import '../../../Auth/presentation/pages/login/widgets/login_view.dart';
import 'custom_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener((){
      setState(() {

      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: SizeConfig.defaultSize! * 20,
          child:CustomIndector(

            dotIndex: pageController!.hasClients ? pageController?.page!.toInt()  : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients ? (pageController?.page == 2 ? false : true): true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 25,
            child: const Text(
              "Skip",
              style:  TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              onTap: (){
               if(pageController!.page! < 2){
                pageController?.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);

               } else {

                 Get.to(()=> LoginView(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
               }

              },
              text:  pageController!.hasClients ?(pageController?.page == 2 ? 'Get Started' : 'Next') : 'Next',
            )),
      ],
    );
  }
}
