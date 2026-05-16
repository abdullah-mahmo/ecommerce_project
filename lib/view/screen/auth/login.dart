import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/view/widget/auth/custometextauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometexttitleauth.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app/view/widget/auth/customebuttonauth.dart';
import 'package:ecommerce_app/view/widget/auth/textsignauth.dart';
import 'package:ecommerce_app/controller/auth/logincontroller.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';

class Login extends StatelessWidget {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    LogincontrollerImp controller = Get.put(LogincontrollerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("10".tr, style: Theme.of(context).textTheme.headlineLarge),
      ),

      body: Column(
        children: [
          CustomeTexttitleAuth(title: "10".tr),

          LogoAuth(picture: ImageAssets.login),
          CustomeTextBodyAuth(body: "11".tr),

          Form(
            key: formstate,
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  CustomeTextAuth(
                    myController: controller.password,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your Password";
                      }
                    },
                    label: Text("12".tr),
                    hint: Text("13".tr),
                    iconData: Icons.email_outlined,
                  ),
                  SizedBox(height: 20),
                  CustomeTextAuth(
                    myController: controller.email,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your Password";
                      }
                    },
                    label: Text("14".tr),
                    hint: Text("15".tr),
                    iconData: Icons.password_outlined,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 200),
            child: InkWell(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: Text("16".tr, textAlign: TextAlign.end),
            ),
          ),
          SizedBox(height: 10),
          CustomeButtonAuth(buttonText: "17".tr, onPressed: () {}),
          SizedBox(height: 10),

          CustomeTextAuthRow(
            rowText: "18".tr,
            rowText2: "19".tr,
            onPressed: () {
              controller.goToSignup();
            },
          ),
        ],
      ),
    );
  }
}
