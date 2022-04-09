import 'package:get/state_manager.dart';
import 'package:flutter_getx/models/product.dart';

class ShoppingController extends GetxController {
  //var products = List<Product>().obs;
  var products = [].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
    // print('shopping controller init');
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    // print('delay');
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd',
          isFavorite: false),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'SecProd',
          isFavorite: true),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProd',
          isFavorite: false),
    ];
    // print('ending');
    products.value = productResult;
  }
}
