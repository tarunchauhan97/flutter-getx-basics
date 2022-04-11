
import 'dart:io';
import 'package:flutter_getx/productmodule/models/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;



class ApiService {
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProducts() async {
    String url = "https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie";

    // var response = await client.get(
    //   'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie' as Uri,
    // );
    final Uri uri = Uri.parse(url);

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
    return [];
  }
}
