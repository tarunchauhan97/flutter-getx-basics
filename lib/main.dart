import 'package:flutter/material.dart';
import 'package:flutter_getx/controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Controller controller = Get.put(Controller(), tag: 'Flutter_Coding', permanent: true);

  @override
  Widget build(BuildContext context) {
    //Get.lazyPut(() => Controller(), tag: 'getx', fenix: true);
    // Get.create(() => Controller());
    Get.putAsync(() async => await Controller());
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
                  // Get.find<Controller>(tag: 'Flutter_Coding');
                  //Get.find<Controller>(tag: 'getx');
                  //Get.find<Controller>();
                  Get.find<Controller>().increment();
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
