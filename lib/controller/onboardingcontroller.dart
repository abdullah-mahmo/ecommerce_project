import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

abstract class OnBoardingcontroller extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingcontroller {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    currentPage++;
    pageController.animateToPage(
      currentPage,
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
