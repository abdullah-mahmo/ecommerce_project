import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/view/widget/auth/custometextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometexttitleauth.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:ecommerce_app/controller/auth/successresetpasswordcontroller.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class SuccessResetPassword extends StatelessWidget {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // SuccessResetPasswordControllerImp controller = Get.put(
    //   SuccessResetPasswordControllerImp(),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Success Reset",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),

      body: Column(
        children: [
          CustomeTexttitleAuth(title: "Success Reset"),

          LogoAuth(picture: ImageAssets.successresetpassword),
          CustomeTextBodyAuth(body: "you're New Password"),
        ],
      ),
    );
  }
}
