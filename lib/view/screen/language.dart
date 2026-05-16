import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:ecommerce_app/view/widget/language/customebuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/core/localization/translation.dart';

class Language extends GetView<LocalController> {
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return Scaffold(
      appBar: AppBar(title: const Text('title1')),
      body: Container(
        //  padding:EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("1".tr, style: Theme.of(context).textTheme.headlineLarge),
            CustomeButtonLang(
              lang: "Ar",
              onPressed: () {
                controller.changeLang("ar");
                Get.offNamed(AppRoute.onboarding);
              },
            ),
            CustomeButtonLang(
              lang: "En",
              onPressed: () {
                controller.changeLang("en");
                Get.offNamed(AppRoute.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
