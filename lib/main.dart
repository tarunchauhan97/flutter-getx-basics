import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management Reactive',
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management Reactive'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "count.value: ${count}",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  increment();
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
