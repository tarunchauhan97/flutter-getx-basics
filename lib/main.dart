import 'package:flutter/material.dart';
import 'package:flutter_getx/controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Controller controller = Get.put(Controller(), tag: 'Flutter_Coding', permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dependency Injection',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dependency Injection '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.find<Controller>(tag: 'Flutter_Coding');
                },
                child: Text("Click Here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
