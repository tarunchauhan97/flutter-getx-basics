import 'dart:io';

import 'package:flutter_getx/commonmodule/AppColor.dart';
import 'package:flutter_getx/commonmodule/AppString.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'productmodule/views/product_list_view.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.purpleColor,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductListView(),
    );
  }
}



