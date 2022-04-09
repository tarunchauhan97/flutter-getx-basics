import 'package:get/state_manager.dart';
import 'package:flutter_getx/models/product.dart';

class CartController extends GetxController {
  //var cartItems = List<Product>().obs;
  var cartItems = [].obs;

  int get count => cartItems.length;

  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  void deleteItem(Product product) {
    final containProduct = cartItems.contains(product);
    print(containProduct);
    cartItems.remove(product);
    // cartItems.value;
    print('Deleted');
  }

  addToCart(Product product) {
    cartItems.add(product);
  }
}
