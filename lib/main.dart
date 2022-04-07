import 'package:flutter/material.dart';
import 'package:flutter_getx/controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends GetView<ControllerClassCustom> {
  @override
  Widget build(BuildContext context) {
    Get.put(ControllerClassCustom());
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Get View'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'The Value is: ${controller.count},',
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print("controller:${controller.hashCode}");
                  controller.increment();
                },
                child: Text("Incement Button"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print("controller:${controller.hashCode}");
                  controller.decrement();
                },
                child: Text("Decrement Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
