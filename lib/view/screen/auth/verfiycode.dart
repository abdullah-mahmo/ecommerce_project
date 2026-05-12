import 'package:ecommerce_app/view/widget/auth/customebuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/view/widget/auth/custometextauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometexttitleauth.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:ecommerce_app/controller/auth/verfiycodecontroller.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerfiyCode extends StatelessWidget {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
   VerfiycodeControllerImp controller = Get.put(
     VerfiycodeControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verfiy Code",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),

      body: Column(
        children: [
          CustomeTexttitleAuth(title: "Verfiy Code"),

          LogoAuth(picture: ImageAssets.forgitPassword),
          CustomeTextBodyAuth(body: "Please Enter You Verfiy  Code"),

          Form(
            key: formstate,
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  OtpTextField(
                    numberOfFields: 5,
                    borderColor: Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      controller.goToResetPassword();
                      // showDialog(
                      //   context: context,
                      //   builder: (context) {
                      //     return AlertDialog(
                      //       title: Text("Verification Code"),
                      //       content: Text('Code entered is $verificationCode'),

                      //     );

                      //   },
                      // );
                    }, // end onSubmit
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
