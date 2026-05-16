import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/controller/onboardingcontroller.dart';

class CustomeSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomeSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
       controller:controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (BuildContext context, int i) => Column(
        children: [
          Text(onBoardingList[i].title!,style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(height: 30),
          Image.asset(
            onBoardingList[i].image!,
            width: 200,
            height: 230,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 80),
          Text(
            onBoardingList[i].body!,
            style:TextStyle(
      height: 2,
      color: ColorApp.grey,
      fontWeight: FontWeight.bold,
      fontSize: 17,
    ) ,
          ),
          Expanded(flex: 1, child: Column(children: [

                  
                     
                      ],
                    )),
        ],
      ),
    );
  }
}
