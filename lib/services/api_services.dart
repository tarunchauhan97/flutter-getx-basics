import 'package:http/http.dart' as http;
import 'package:flutter_getx/constants/api_const.dart';
import 'package:flutter_getx/models/news_model.dart';

class ApiServices {
  static var client = http.Client();
  static Future<NewsModel?> fetchNews() async {
    var response = await client.get(
      Uri.parse(ApiUrl.apiLink),
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return newsModelFromJson(jsonString);
    } else {
      return null;
    }
  }
}
