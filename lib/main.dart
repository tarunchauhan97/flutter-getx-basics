import 'package:flutter/material.dart';
import 'package:flutter_getx/test_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bottom Sheet',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('This is the Bottom Sheet '),
        // ),
        body: TestPage(),
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       ElevatedButton(
        //         onPressed: () {
        //           Get.to(TestPage());
        //         },
        //         child: Text("Bottom Sheet Button"),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
