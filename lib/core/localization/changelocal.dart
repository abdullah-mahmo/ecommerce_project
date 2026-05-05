
// configuration page
import 'dart:ui';

import 'package:ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';


class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  //دالة لتسجيل لغة الجهاز فى الشيرد 

  void changeLang(String langCode) {
    Locale locale = Locale(langCode);

    myServices.sharedPreferences.setString("lang", langCode);

    Get.updateLocale(locale);


// دالة البدا وهى تبحث عن لغة الجهاز وتضع اللانج كود
    
  }
@override
  void onInit() {
    super.onInit();
      String? sharedPrefLang = myServices.sharedPreferences.getString("lang");

      if (sharedPrefLang == "ar") {
        language =const Locale("ar");
      }else if (sharedPrefLang == "en"){
         language =const Locale("en");
      }else{
        language = Locale(Get.deviceLocale!.languageCode);
      }
    }
}
