import 'package:flutter/material.dart';
import 'package:flutter_getx/controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ControllerClassCustom controllerClassCustom = Get.put(ControllerClassCustom());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Unique ID',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Unique ID '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<ControllerClassCustom>(
                id: 'Counter',
                builder: (controller) {
                  return Text(
                    "The Value is : ${controller.count}",
                    style: TextStyle(fontSize: 30),
                  );
                },
              ),
              GetBuilder<ControllerClassCustom>(builder: (controller) {
                return Text(
                  "NOID The Value is : ${controller.count}",
                  style: TextStyle(fontSize: 30),
                );
              }),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => controllerClassCustom.increment(),
                child: Text("Increment Button"),
              ),
              ElevatedButton(
                onPressed: () => controllerClassCustom.decrement(),
                child: Text("Decrement Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
