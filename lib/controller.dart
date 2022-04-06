import 'package:get/get.dart';

class ControllerClassCustom extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(['Counter']);
  }

  void decrement() {
    count--;
    update(['Counter']);
  }
}
