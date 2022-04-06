import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerClassCustom extends GetxController {
  void changeLanguage(var language, var country) {
    var locale = Locale(language, country);
    Get.updateLocale(locale);
  }

//var count = 0;
// void increment() {
//   count++;
//   update(['Counter']);
// }
//
// void decrement() {
//   count--;
//   update(['Counter']);
// }
}
