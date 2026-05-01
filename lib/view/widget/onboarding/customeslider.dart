import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/core/constant/color.dart';


class CustomeSliderOnBoarding extends StatelessWidget {
  const CustomeSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
              itemCount: onBoardingList.length,
              itemBuilder: (BuildContext context, int i) => Column(
                children: [
                  Text(onBoardingList[i].title!),
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
                    style: TextStyle(height: 2, color: ColorApp.grey),
                  ),
                  Expanded(flex: 1, child: Column(children: [

                  
                     
                      ],
                    )),
                  
                ],
              ),
            );
  }
}
