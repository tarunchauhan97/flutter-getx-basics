import 'package:get/get.dart';

class StringName extends GetxController {
  var name = 'world';


  void upperString() {
    name = name.toUpperCase();
    print(name);
    update();
  }

  void lowerString() {
    name = name.toLowerCase();
    print(name);
    update();
  }
}
