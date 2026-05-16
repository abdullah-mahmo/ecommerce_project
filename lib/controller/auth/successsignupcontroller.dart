import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  dynamic goToLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  late TextEditingController? verfiyCode;

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    verfiyCode = TextEditingController();
    super.onInit();
  }
}
