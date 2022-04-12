import 'package:get/get.dart';

import '../user_model.dart';

class UserProviderProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return UserProvider.fromJson(map);
      if (map is List) return map.map((item) => UserProvider.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<List<dynamic>> getUser() async {
    final response = await get("https://randomuser.me/api/?results=10");
    if (reactive.status.isError) {
      return Future.error(response.statusText!);
    } else {
      return response.body['results'];
    }
  }

  Future<UserProvider?> getUserProvider(int id) async {
    final response = await get('userprovider/$id');
    return response.body;
  }

  Future<Response<UserProvider>> postUserProvider(UserProvider userprovider) async =>
      await post('userprovider', userprovider);

  Future<Response> deleteUserProvider(int id) async => await delete('userprovider/$id');
}
