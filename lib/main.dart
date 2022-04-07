import 'package:flutter/material.dart';
import 'package:flutter_getx/first_controller.dart';
import 'package:flutter_getx/home.dart';
import 'package:flutter_getx/second_controller.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: SecondController(),
      title: 'Binding GetX',
      // getPages: [
      //   GetPage(
      //     name: '/home',
      //     page: () => Home(),
      //     //binding: HomeControllerBinding(),
      //   ),
      // ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('Binding GetX'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text("The value is: ${Get.find<FirstController>().count}")),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Get.find<FirstController>().increment();
                },
                child: Text("Increment Button"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(Home());
                },
                child: Text("Home Page Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// class MyApp extends GetView<ControllerClassCustom> {
//   @override
//   Widget build(BuildContext context) {
//     Get.put(ControllerClassCustom());
//     return GetMaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Get View'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Obx(() => Text(
//                     'The Value is: ${controller.count},',
//                     style: TextStyle(fontSize: 30),
//                   )),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   print("controller:${controller.hashCode}");
//                   controller.increment();
//                 },
//                 child: Text("Incement Button"),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   print("controller:${controller.hashCode}");
//                   controller.decrement();
//                 },
//                 child: Text("Decrement Button"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
