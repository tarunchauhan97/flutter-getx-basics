import 'package:get/state_manager.dart';

class Product {
  final int id;
  final String productName;
  final String productImage;
  final String productDescription;
  final double price;
  final isFavorite;

  Product(
      {required this.id,
      required this.productName,
      required this.productImage,
      required this.productDescription,
      required this.price,
      required this.isFavorite});

// void toggle() {
//   isFavorite.value = true;
// }
}
