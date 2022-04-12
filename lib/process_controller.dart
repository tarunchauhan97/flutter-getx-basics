import 'package:get/get.dart';

class ProcessController extends GetxController{
  final _isLoading = false.obs;
  isLoading() => _isLoading.value;
  swap() => _isLoading.value = !_isLoading.value;
}