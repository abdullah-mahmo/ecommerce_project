import 'package:ecommerce_app/view/widget/auth/custometextbodyauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/view/widget/auth/custometextauth.dart';
import 'package:ecommerce_app/view/widget/auth/customeButtonAuth.dart';
import 'package:ecommerce_app/view/widget/auth/custometexttitleauth.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app/view/widget/auth/textsignauth.dart';
import 'package:ecommerce_app/controller/auth/signupcontroller.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';

class Signup extends StatelessWidget {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SginupControllerImp controller = Get.put(SginupControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("38".tr, style: Theme.of(context).textTheme.headlineLarge),
      ),

      body: Column(
        children: [
          CustomeTexttitleAuth(title: "39".tr),

          // LogoAuth(picture: ImageAssets.signup),
          CustomeTextBodyAuth(body: "40".tr),

          Form(
            key: formstate,

            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  CustomeTextAuth(
                    myController: controller.username,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your Password";
                      } else if (val!.length < 10) {
                        return "Password Is Weak";
                      }
                    },
                    label: Text("41".tr),
                    hint: Text("42".tr),
                    iconData: Icons.person_3_rounded,
                  ),

                  CustomeTextAuth(
                    myController: controller.email,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your Password";
                      }
                    },
                    label: Text("43".tr),
                    hint: Text("44".tr),
                    iconData: Icons.email_outlined,
                  ),
                  CustomeTextAuth(
                    myController: controller.phone,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your Password";
                      }
                    },
                    label: Text("45".tr),
                    hint: Text("46".tr),
                    iconData: Icons.phone_outlined,
                  ),
                  CustomeTextAuth(
                    myController: controller.password,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your Password";
                      }
                    },
                    label: Text("47".tr),
                    hint: Text("48".tr),
                    iconData: Icons.password_outlined,
                  ),
                ],
              ),
            ),
          ),
          CustomeButtonAuth(
            buttonText: "49".tr,
            onPressed: () {
              controller.signUp();
            },
          ),

          // Container(
          //   padding: EdgeInsets.only(left: 200),
          //   child: Text("50".tr, textAlign: TextAlign.end),
          // ),
          CustomeTextAuthRow(
            rowText: "50".tr,
            rowText2: "51".tr,
            onPressed: () {
              controller.goToLogin();
            },
          ),
        ],
      ),
    );
  }
}
