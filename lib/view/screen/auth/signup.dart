import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/view/widget/auth/custometextauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometextbodyauth.dart';
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
        title: Text(
          "Sign UP",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),

      body: Column(
        children: [
          CustomeTexttitleAuth(title: "Welcome Back"),

          LogoAuth(picture: ImageAssets.signup),
          CustomeTextBodyAuth(
            body:
                "Sign in with your email and password \n Countiue With Social Media",
          ),

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
                      }else if(val!.length < 10){
                          return "Password Is Weak";
                      }
                    },
                    label: Text("Username"),
                    hint: Text("Enter Your Username"),
                    iconData: Icons.person_3_rounded,
                  ),

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
                  CustomeTextAuth(
                     myController: controller.phone,
                      validator: (val) {
                      if (val == "") {
                        return "Enter Your Password";
                      }
                    },
                    label: Text("Phone"),
                    hint: Text("Enter Your Phone"),
                    iconData: Icons.phone_outlined,
                  ),
                  CustomeTextAuth(
                     myController: controller.password,
                      validator: (val) {
                      if (val == "") {
                        return "Enter Your Password";
                      }
                    },
                    label: Text("Password"),
                    hint: Text("Enter Your Password"),
                    iconData: Icons.password_outlined,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 200),
            child: Text("Forget password", textAlign: TextAlign.end),
          ),
          SizedBox(height: 10),

          CustomeTextAuthRow(
            rowText: " Login",
            rowText2: "Do Have An Account, ",
            onPressed: () {
              controller.goToLogin();
            },
          ),
        ],
      ),
    );
  }
}
