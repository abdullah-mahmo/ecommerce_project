import 'package:ecommerce_app/view/screen/auth/forgetpassword/verfiycode.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';

import 'package:ecommerce_app/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_app/view/widget/onboarding/Test.dart';

import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/checkemail.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      theme: controller.appTheme,

      // home: Login(),
      home: Language(),
      // home: OnBoarding(),
      // home: SuccessSignUp(),
      // home: CheckEmail(),

      // home: Resetpassword(),
      // home: Signup(),
      // home: ForGetPassword(),
      // home: VerfiyPassword(),
      // home: Test(),
      routes: routes,
    );
  }
}
