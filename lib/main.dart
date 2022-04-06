import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snack Bar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is snack Bar '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar("Its Snack Bar GetX", "Hello SnackBar");
                },
                child: Text("Show Snack Bar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
