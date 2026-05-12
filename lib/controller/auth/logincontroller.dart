import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/core/constant/routes.dart';

abstract class LoginController extends GetxController {
  dynamic login();
  dynamic goToSignup();
  dynamic goToForgetPassword();
}

class LogincontrollerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {}

  @override
  goToSignup() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
