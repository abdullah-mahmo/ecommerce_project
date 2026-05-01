
import 'package:flutter/material.dart';
import'package:ecommerce_app/data/datasource/static/static.dart';


class DotControllerOnBoarding extends StatelessWidget {
  const DotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                            ...List.generate(
                          onBoardingList.length,
                          (index) => AnimatedContainer(
                            margin: EdgeInsets.all(5),
                           
                            duration: const Duration(milliseconds: 900),
                            width: 6,
                            height: 6,
                            color: Colors.black,
                          ),
                        ),
                        ],
                      );
  }
}
