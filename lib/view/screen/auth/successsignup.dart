import 'package:ecommerce_app/view/widget/auth/customeButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:ecommerce_app/controller/auth/successsignupcontroller.dart';

class SuccessSignUp extends StatelessWidget {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(
      SuccessSignUpControllerImp(),
    );
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Text("55".tr, style: Theme.of(context).textTheme.headlineLarge),

              LogoAuth(picture: ImageAssets.successSignin),
              SizedBox(height: 30),

              CustomeButtonAuth(
                buttonText: '66'.tr,
                onPressed: () {
                  controller.goToLogin();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
