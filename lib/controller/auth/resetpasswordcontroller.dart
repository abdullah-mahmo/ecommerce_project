import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPassword extends GetxController {
  dynamic resetPasswordfunc();
  dynamic goToSuccessResetPassword();
}

class ResetPasswordImp extends ResetPassword {
  late TextEditingController password;
  late TextEditingController resetPassword;

  @override
  resetPasswordfunc() {}

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.verfiyCode);
  }

  @override
  void onInit() {
    password = TextEditingController();
    resetPassword = TextEditingController();
    super.onInit();
  }
}
