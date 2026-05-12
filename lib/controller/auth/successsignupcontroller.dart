import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  dynamic goToResetPassword();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  late TextEditingController? verfiyCode;

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    verfiyCode = TextEditingController();
    super.onInit();
  }
}
