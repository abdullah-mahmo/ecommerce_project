import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/view/widget/auth/custometextauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometexttitleauth.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app/view/widget/auth/customebuttonauth.dart';
import 'package:ecommerce_app/controller/auth/forgetpasswordcontroller.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';

class ForGetPassword extends StatelessWidget {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(
      ForgetPasswordControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("20".tr, style: Theme.of(context).textTheme.headlineLarge),
      ),

      body: Column(
        children: [
          CustomeTexttitleAuth(title: "21".tr),

          LogoAuth(picture: ImageAssets.forgitPassword),
          CustomeTextBodyAuth(body: "22".tr),

          Form(
            key: formstate,
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  CustomeTextAuth(
                    myController: controller.email,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your Password";
                      }
                    },
                    label: Text("23".tr),
                    hint: Text("24".tr),
                    iconData: Icons.email_outlined,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 10),
          CustomeButtonAuth(
            buttonText: "25".tr,
            onPressed: () {
              controller.goToVeryfiyCode();
            },
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
