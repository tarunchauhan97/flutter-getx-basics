import 'package:flutter/material.dart';
import 'package:flutter_getx/dash_board.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is The Home page",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Go Back')),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.to(DashBoard());
                },
                child: Text('Go to dashboard')),

          ],
        ),
      ),
    );
  }
}
