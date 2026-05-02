import 'package:flutter/material.dart';
import 'package:ecommerce_app/controller/onboardingcontroller.dart';
import 'package:get/get.dart';

class CustomeButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomeButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 25),
      child: MaterialButton(
        color: Colors.blue,
        onPressed: () {
         controller.next();
        },
        child: Text("Continue"),
      ),
    );
  }
}
