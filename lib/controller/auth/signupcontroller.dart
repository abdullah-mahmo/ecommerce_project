import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/core/constant/routes.dart';

abstract class SginupController extends GetxController {
  dynamic signUp();
  dynamic goToLogin();
}

class SginupControllerImp extends SginupController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  @override
  signUp() {
    Get.offNamed(AppRoute.checkEmail);
  }

  @override
  goToLogin() {
    Get.toNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
