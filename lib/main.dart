import 'package:flutter/material.dart';
import 'package:flutter_getx/controller.dart';
import 'package:flutter_getx/students.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  // var count = 0.obs;
  //
  // void increment() {
  //   count++;
  // }

  @override
  Widget build(BuildContext context) {
    //var student = Student();
    //final student = Student(name: 'Tarun Singh Chauhan', age: 24).obs;
    //ControllerClassCustom controllerClassCustom = ControllerClassCustom();
    ControllerClassCustom controllerClassCustom = Get.put(ControllerClassCustom());

    return GetMaterialApp(
      title: 'Reactive State Management By GetX Controller',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reactive State Management By GetX Controller'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetX<ControllerClassCustom>(
                  //init: ControllerClassCustom(),
                  builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: TextStyle(fontSize: 20),
                );
              }),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  //Get.find<ControllerClassCustom>().increment();
                  controllerClassCustom.increment();
                  //student.value.name = student.value.name.toLowerCase();
                  // student.update((student) {
                  //   student?.name = student.name.toString().toLowerCase();
                  // });
                },
                child: Text("Increment Button"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                 // Get.find<ControllerClassCustom>().decrement();
                  controllerClassCustom.decrement();

                  // student.update((student) {
                  //   student?.name = student.name.toString().toUpperCase();
                  // });
                },
                child: Text("Decrement Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
