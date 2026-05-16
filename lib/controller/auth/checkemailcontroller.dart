import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

abstract class CheckEmailController extends GetxController {
  dynamic checkEmail() {}
  dynamic goToSuccessSignup() {}
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;

  @override
  checkEmail() {
    // Get.offNamed(AppRoute.signup);
  }

  @override
  goToSuccessSignup() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
