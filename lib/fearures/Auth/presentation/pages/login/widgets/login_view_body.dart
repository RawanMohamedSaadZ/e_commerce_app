import 'package:e_commerce_app/core/utlis/size_config.dart';
import 'package:e_commerce_app/core/widgets/custom_Button.dart';
import 'package:e_commerce_app/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/constants/constant.dart';
import '../../../../data/Repositories/auth_repo_impl.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const VerticalSpace(value: 10),
      SizedBox(width: SizeConfig.screenWidth, child: Image.asset(logo)),
      const Text(
        'Fruit market',
        style: TextStyle(
            fontSize: 40,
            color: Color(0xff6E2459),
            fontFamily: 'PlaywritePL',
            fontWeight: FontWeight.bold),
      ),
      const Expanded(child:  SizedBox()),
      const Row(
        children: [
          Flexible(

            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomButtonWithIcons(
                image: Google,
                  text:'login with Google',
                  color: Colors.black,),
            ),
          ),
        Flexible(
          flex: 1,
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8),
            child: CustomButtonWithIcons(
              image: Facbook,
              text:'login with Facbook',
              color: Colors.blue,),
          ),
        )],

      ),
      const Expanded(child: SizedBox()),
    ]);
  }
}

