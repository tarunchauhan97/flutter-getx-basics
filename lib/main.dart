import 'package:flutter/material.dart';
import 'package:flutter_getx/app_controller.dart';
import 'package:flutter_getx/first_controller.dart';
import 'package:flutter_getx/home.dart';
import 'package:flutter_getx/home_controller_binding.dart';
import 'package:flutter_getx/second_controller.dart';

import 'package:get/get.dart';

void main() {
  AppController().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialBinding: SecondController(),
      title: 'Binding GetX',
      // getPages: [
      //   GetPage(
      //     name: "/home",
      //     page: () => Home(),
      //     binding: HomeControllerBinding(),
      //   ),
      // ],
      getPages: [
        GetPage(
          name: "/home",
          page: () => Home(),
          binding: BindingsBuilder(() => {
                Get.lazyPut<HomeControllerBinding>(() => HomeControllerBinding()),
              }),
        ),
      ],
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
                  //Get.to(Home());
                  //Get.toNamed("/home");
                  Get.to(Home(), binding: HomeControllerBinding());
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
