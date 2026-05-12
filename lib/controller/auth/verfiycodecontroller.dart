import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/core/constant/routes.dart';

abstract class VerfiycodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerfiycodeControllerImp extends VerfiycodeController {
  late TextEditingController? verfiyCode;

  @override
  checkCode() {}

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
