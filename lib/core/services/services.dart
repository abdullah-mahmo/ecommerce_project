// configuration page

//main السيرفسس علشان اول ما اشغل التطبيق تشتغل كل حاجة احنا عايزين التطبيق يبدا بيها زى الللغة وبيتم وضع السيرفسس فى ال
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();

    return this;
  }
}

Future<void> initialServices() async {
  await Get.putAsync<MyServices>(() async => await MyServices().init());
}
