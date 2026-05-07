import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/language.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.language: (context) => const Language(),
  AppRoute.login: (context) =>  Login(),
  AppRoute.onboarding: (context) => const OnBoarding(),
  AppRoute.signup: (context) =>  Signup(),


};
