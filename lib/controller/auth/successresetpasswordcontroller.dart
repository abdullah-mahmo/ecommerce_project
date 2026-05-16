import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

abstract class SuccessResetPasswordController extends GetxController {
  // dynamic checkEmail() {}
  // dynamic goToVeryfiyCode() {}
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  late TextEditingController email;

  // @override
  // checkEmail() {}

  // @override
  // goToVeryfiyCode() {
  //   Get.offNamed(AppRoute.verfiyCode);
  // }

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
