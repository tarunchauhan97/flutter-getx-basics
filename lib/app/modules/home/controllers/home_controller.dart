import 'package:flutter_getx/app/modules/home/providers/user_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>> {
  //TODO: Implement HomeController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    UserProviderProvider().getUser().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
