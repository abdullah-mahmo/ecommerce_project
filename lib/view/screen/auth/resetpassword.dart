import 'package:flutter/material.dart';
import 'package:ecommerce_app/view/widget/auth/custometexttitleauth.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometextbodyauth.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:ecommerce_app/controller/auth/resetpasswordcontroller.dart';
import 'package:ecommerce_app/view/widget/auth/custometextauth.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    ResetPasswordImp controller = Get.put(ResetPasswordImp());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ResetPassword",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
      body: Column(
        children: [
          CustomeTexttitleAuth(title: "Save"),

          LogoAuth(picture: ImageAssets.forgitPassword),
          CustomeTextBodyAuth(body: "Please Enter new Password"),

          Form(
            key: formstate,
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  CustomeTextAuth(
                    myController: controller.goToSuccessResetPassword(),
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your Password";
                      }
                    },
                    label: Text("Email"),
                    hint: Text("Enter Your Email"),
                    iconData: Icons.email_outlined,
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
