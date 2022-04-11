import 'package:get/get.dart';
import 'package:flutter_getx/models/news_model.dart';
import 'package:flutter_getx/services/api_services.dart';

class NewsController extends GetxController {
  var articles = <Article>[].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    fetchNews();
  }

  void fetchNews() async {
    try {
      var news = await ApiServices.fetchNews();
      if (news != null) {
        articles.value = news.articles!;
      }
    } finally {
      isLoading(false);
    }
  }
}
