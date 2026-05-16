// configuration page
import 'dart:ui';

import 'package:ecommerce_app/core/constant/appthem.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;

  //دالة لتسجيل لغة الجهاز فى الشيرد

  void changeLang(String langCode) {
    Locale locale = Locale(langCode);

    myServices.sharedPreferences.setString("lang", langCode);
    appTheme = langCode == "ar" ? themeArbic : themeEnglish;
    Get.changeTheme(appTheme);

    Get.updateLocale(locale);

    // دالة البدا وهى تبحث عن لغة الجهاز وتضع اللانج كود
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");

    if (sharedPrefLang == "ar") {
      language = Locale("ar");

      appTheme = themeArbic;
    } else if (sharedPrefLang == "en") {
      language = Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;

    }
  }
}
