import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/verfiycode.dart';

import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/successsignup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/checkemail.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.language: (context) => Language(),
  AppRoute.login: (context) => Login(),
  AppRoute.onboarding: (context) => const OnBoarding(),
  AppRoute.signup: (context) => Signup(),
  AppRoute.forgetPassword: (context) => ForGetPassword(),
  AppRoute.verfiyCode: (context) => VerfiyCode(),
  AppRoute.resetPassword: (context) => ResetPassword(),
  AppRoute.successSignUp: (context) => SuccessSignUp(),
  AppRoute.successResetPassword: (context) => SuccessResetPassword(),
  AppRoute.checkEmail: (context) => CheckEmail(),
};
