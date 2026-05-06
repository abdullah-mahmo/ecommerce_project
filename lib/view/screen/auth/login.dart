
import 'package:flutter/material.dart';
import 'package:ecommerce_app/view/widget/auth/custometextauth.dart';
import 'package:ecommerce_app/view/widget/auth/custometextbodyauth.dart';

import 'package:ecommerce_app/view/widget/auth/custometexttitleauth.dart';
import 'package:ecommerce_app/view/widget/auth/logoauth.dart';
import 'package:ecommerce_app/view/widget/auth/customebuttonauth.dart';
import 'package:ecommerce_app/core/constant/color.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Sign In", style: Theme.of(context).textTheme.headlineLarge)),
       
      
      body:Column(
        children: [
          CustomeTexttitleAuth(title:"Sign In"),

          LogoAuth(),
          CustomeTextBodyAuth(body:"Sign in with your email and password \n Countiue With Social Media")
         ,
          
          Container(
            padding:EdgeInsets.all(30),
            child: Column(
              children: [
                CustomeTextAuth(label:Text("Email"), hint:Text("Enter Your Email"),iconData: Icons.email_outlined,),
                SizedBox(height:20),
                CustomeTextAuth(label:Text("Password"), hint:Text("Enter Your Password"),iconData: Icons.password_outlined,)
              ],
            ),
            
          ),
          Container(
            padding:EdgeInsets.only(left: 200),
            child: Text("Forget password",textAlign: TextAlign.end,),
          ),
          SizedBox(height: 10,),
          CustomeButtonAuth(),
          SizedBox(height: 10),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             Text("Don't have an account,"),
          InkWell(child: Text(" Sing Up" ,style: TextStyle(color: ColorApp.red,)),)
         
          ],
         )

        ],
      )
      

    );
  }
}