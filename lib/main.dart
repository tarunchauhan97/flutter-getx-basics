import 'package:flutter/material.dart';
import 'package:flutter_getx/controller.dart';
import 'package:flutter_getx/employee.dart';
import 'package:flutter_getx/student.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ControllerClassCustom controllerClassCustom = Get.put(ControllerClassCustom());
  final student = Student(name: 'Tarun Singh Chauhan', age: 24).obs;
  final employee = Employee(name: 'Aditya', age: 17).obs;

  //final employee = Get.put(Employee());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Unique ID',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Unique ID '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Name is : ${student.value.name}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              GetX<Student>(
                init: Student(),
                builder: (employee) {
                  return Text('--${employee.name}--');
                },
              ),
              GetBuilder<ControllerClassCustom>(
                id: 'Counter',
                builder: (controller) {
                  return Text(
                    "The Value is : ${controller.count}",
                    style: TextStyle(fontSize: 30),
                  );
                },
              ),
              GetBuilder<ControllerClassCustom>(builder: (controller) {
                return Text(
                  "NOID The Value is : ${controller.count}",
                  style: TextStyle(fontSize: 30),
                );
              }),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => controllerClassCustom.increment(),
                child: Text("Increment Button"),
              ),
              ElevatedButton(
                onPressed: () => controllerClassCustom.decrement(),
                child: Text("Decrement Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
