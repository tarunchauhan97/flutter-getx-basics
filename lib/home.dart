import 'package:flutter/material.dart';
import 'package:flutter_getx/home_getx.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Binding GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text("The value is: ${Get.find<HomeGetx>().count}")),
            ElevatedButton(
              onPressed: () {
                Get.find<HomeGetx>().increment();
              },
              child: Text("Increment Button"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back Button"),
            ),
          ],
        ),
      ),
    );
  }
}
