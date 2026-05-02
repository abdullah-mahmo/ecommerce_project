import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce_app/view/widget/onboarding/customeslider.dart';
import 'package:ecommerce_app/view/widget/onboarding/dotcontroller.dart';
import 'package:ecommerce_app/controller/onboardingcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
   
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      appBar: AppBar(title: Text("Hello Ecommerce App")),
      body: Column(
        children: [
          Expanded(flex: 3, child: CustomeSliderOnBoarding()),

           DotControllerOnBoarding(),
          const Spacer(flex: 2),
          const CustomeButtonOnBoarding(),
        ],
      ),
    );
  }
}
