import 'package:flutter/material.dart';
import 'package:flutter_getx/controller.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print("THis is the Startup Service");
  await Get.putAsync<Service>(() async => await Service());
  print("Services are about to start");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Get.putAsync(() async => await Service());
    return GetMaterialApp(
      title: 'GetX Service',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Service'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.find<Service>().increment();
                },
                child: Text("Increment Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
