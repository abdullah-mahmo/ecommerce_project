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
        title: Text(
          "Forget Password",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),

      body: Column(
        children: [
          CustomeTexttitleAuth(title: "Forget Password"),

          LogoAuth(picture: ImageAssets.forgitPassword),
          CustomeTextBodyAuth(
            body: "Please Enter You Email Address To Recive A Verification Code",
          ),

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
                    label: Text("Email"),
                    hint: Text("Enter Your Email"),
                    iconData: Icons.email_outlined,
                  ),
                ],
              ),
            ),
          ),
        
          SizedBox(height: 10),
          CustomeButtonAuth(
            buttonText: "Check",
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
