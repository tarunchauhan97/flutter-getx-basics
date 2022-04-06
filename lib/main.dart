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
      title: 'Dialog Box',
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is Dialog Area  '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  //Get.snackbar("Its Snack Bar GetX", "Hello SnackBar");
                  Get.defaultDialog(
                    title: 'Dialog Title',
                    titleStyle: TextStyle(fontSize: 18),
                    middleText: "this will be middle area",
                    middleTextStyle: TextStyle(fontSize: 19.0),
                    backgroundColor: Colors.blueGrey,
                    radius: 80.0,
                    textCancel: "NO",
                    cancelTextColor: Colors.white,
                    textConfirm: "Yes",
                    confirmTextColor: Colors.white,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.pinkAccent,
                  );
                },
                child: Text("Show Dialog Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
