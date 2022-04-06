import 'package:flutter/material.dart';
import 'package:flutter_getx/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Route Navigation for Un-names Routes',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Route Navigation for Un-names Routes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(HomePage());
                },
                child: Text("Go to Home Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
