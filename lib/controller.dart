import 'package:get/get.dart';

class EvenOddNumber extends GetxController {
  var numberEven = 0.obs;
  var numberOdd = 1.obs;

  void even() {
    numberEven = numberEven + 2;
    update();
  }

  void odd() {
    numberOdd = numberOdd + 2;
    update();
  }
}

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
