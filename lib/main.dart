import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:ecommerce_app/view/screen/language.dart';


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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          headlineMedium: TextStyle(
            height: 2,
            color: ColorApp.grey,
            fontWeight: FontWeight.bold,
            fontSize: 17,
            locale: controller.language,
          ),
        ),
      ),
      // home: Login(),
      // home: Language(),
      // home: OnBoarding(),
       home: Signup(),

      routes: routes,
    );
  }
}
