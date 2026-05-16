import 'package:flutter/material.dart';
import 'package:ecommerce_app/view/widget/auth/custometexttitleauth.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometextbodyauth.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:ecommerce_app/controller/auth/resetpasswordcontroller.dart';
import 'package:ecommerce_app/view/widget/auth/custometextauth.dart';
import 'package:ecommerce_app/view/widget/auth/customebuttonauth.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    ResetPasswordImp controller = Get.put(ResetPasswordImp());

    return Scaffold(
      appBar: AppBar(
        title: Text("30".tr, style: Theme.of(context).textTheme.bodySmall),
      ),
      body: Column(
        children: [
          CustomeTexttitleAuth(title: "31".tr),

          LogoAuth(picture: ImageAssets.resetpassword),
          CustomeTextBodyAuth(body: "32".tr),

          Form(
            key: formstate,
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  CustomeTextAuth(
                    myController: controller.resetPassword,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your  New Password";
                      }
                    },
                    label: Text("33".tr),
                    hint: Text("34".tr),
                    iconData: Icons.password_outlined,
                  ),
                  CustomeTextAuth(
                    myController: controller.resetPassword,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your  New Password";
                      }
                    },
                    label: Text("35".tr),
                    hint: Text("36".tr),
                    iconData: Icons.password_rounded,
                  ),
                  CustomeButtonAuth(
                    buttonText: "37".tr,
                    onPressed: () {
                      controller.goToSuccessResetPassword();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
