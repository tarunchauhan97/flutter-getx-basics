import 'package:flutter/material.dart';
import 'package:flutter_getx/controller.dart';
import 'package:flutter_getx/messages.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ControllerClassCustom controllerClassCustom = Get.put(ControllerClassCustom());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Internationalization',
      translations: Messages(),
      locale: Locale('en_America'),
      fallbackLocale: Locale('en_America'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internationalization '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "hello".tr,
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controllerClassCustom.changeLanguage('hindi', 'India');
                },
                child: Text("Hindi"),
              ),
              ElevatedButton(
                onPressed: () {
                  controllerClassCustom.changeLanguage('french', 'French');
                },
                child: Text("French"),
              ),
              ElevatedButton(
                onPressed: () {
                  controllerClassCustom.changeLanguage('en', 'America');
                },
                child: Text("America"),
              ),
              // GetBuilder<ControllerClassCustom>(
              //   id: 'Counter',
              //   builder: (controller) {
              //     return Text(
              //       "The Value is : ${controller.count}",
              //       style: TextStyle(fontSize: 30),
              //     );
              //   },
              // ),
              // GetBuilder<ControllerClassCustom>(builder: (controller) {
              //   return Text(
              //     "NOID The Value is : ${controller.count}",
              //     style: TextStyle(fontSize: 30),
              //   );
              // }),
              // SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () => controllerClassCustom.increment(),
              //   child: Text("Increment Button"),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
