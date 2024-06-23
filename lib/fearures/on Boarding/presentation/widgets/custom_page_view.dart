import 'package:e_commerce_app/fearures/on%20Boarding/presentation/widgets/page_View_items.dart';

import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key , @required this.pageController});
   final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController ,
      children: [PageViewItems(
          image:'assets/images/Welcome1.png' ,
          title: 'E Shoping' ,
          Subtitle: 'Explore top Organic Fruits'),
        PageViewItems(
            image:'assets/images/Welcome2.png' ,
            title:'Delivery on the way' ,
            Subtitle:' Get your Order by Speed delivery ' ),
        PageViewItems(
            image:'assets/images/Welcome3.png' ,
            title: 'Delivery Arrived',
            Subtitle:'Order is arrived at your place' ),

      ],
    );
  }
}
