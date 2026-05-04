import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/controller/onboardingcontroller.dart';



class DotControllerOnBoarding extends StatelessWidget {
  const DotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
             
              margin: EdgeInsets.only(right:5),

              duration: const Duration(milliseconds: 900),
              width: controller.currentPage == index ? 20 : 5,
              height: 6,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.black
              ),
            ),
          ),
        ],
      ),
    );
  }
}
