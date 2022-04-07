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

  // final student = Student(name: 'Tarun Singh Chauhan', age: 24).obs;
  //Student student = Get.put(Student());

  @override
  Widget build(BuildContext context) {
    final employee = Employee();
    final student = Student(name: 'Tarun', ages: 24).obs;
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() => Text(
                        "Emp Name: ${employee.name.value}",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                  IconButton(
                      onPressed: () {
                        employee.name.value = "Paras";
                        employee.age.value = 25;
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        employee.name.value = "Aditya";
                        employee.age.value = 20;
                      },
                      icon: Icon(Icons.edit)),
                  Obx(() => Text(
                        "Emp Age: ${employee.age.value}",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(height: 5),
              Divider(height: 1, thickness: 2, color: Colors.red, indent: 10, endIndent: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() => Text(
                        "Stu Name: ${student.value.name}",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                  IconButton(
                      onPressed: () {
                        student.update((student) {
                          student?.name = student.name.toString().toLowerCase();
                          student?.ages = 25;
                        });
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        student.update((student) {
                          student?.name = student.name.toString().toUpperCase();
                          student?.ages = 20;
                        });
                      },
                      icon: Icon(Icons.edit)),
                  Obx(() => Text(
                        "Stu Age: ${student.value.ages}",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(height: 5),
              Divider(height: 1, thickness: 2, color: Colors.red, indent: 10, endIndent: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.find<EvenOddNumber>().even();
                      },
                      icon: Icon(Icons.keyboard_arrow_up)),
                  GetX<EvenOddNumber>(
                    init: EvenOddNumber(),
                    builder: (evenOddNumber) {
                      return Text(
                        "Even: ${evenOddNumber.numberEven}",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      );
                    },
                  ),
                  IconButton(
                      onPressed: () {
                        Get.find<EvenOddNumber>().numberEven - 2;
                      },
                      icon: Icon(Icons.keyboard_arrow_down_sharp)),
                  SizedBox(height: 5),
                  IconButton(
                      onPressed: () {
                        Get.find<EvenOddNumber>().odd() ;
                      },
                      icon: Icon(Icons.keyboard_arrow_up)),
                  GetBuilder<EvenOddNumber>(
                      init: EvenOddNumber(),
                      builder: (evenoddController) {
                        return Text('Oddc: ${evenoddController.numberOdd}');
                      }),
                  // GetX<EvenOddNumber>(
                  //   init: EvenOddNumber(),
                  //   builder: (evenOddNumber) {
                  //     return Text(
                  //       "Odd: ${evenOddNumber.numberOdd}",
                  //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  //     );
                  //   },
                  // ),
                  IconButton(
                      onPressed: () {
                        Get.find<EvenOddNumber>().numberOdd - 2;
                      },
                      icon: Icon(Icons.keyboard_arrow_down_sharp)),
                ],
              ),
              SizedBox(height: 5),
              Divider(height: 1, thickness: 2, color: Colors.red, indent: 10, endIndent: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => controllerClassCustom.increment(),
                    child: Text("+"),
                  ),
                  GetBuilder<ControllerClassCustom>(
                    id: 'Counter',
                    builder: (controller) {
                      return Text(
                        "The Value is : ${controller.count}",
                        style: TextStyle(fontSize: 20),
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () => controllerClassCustom.decrement(),
                    child: Text("--"),
                  ),
                ],
              ),
              GetBuilder<ControllerClassCustom>(builder: (controller) {
                return Text(
                  "NOID The Value is : ${controller.count}",
                  style: TextStyle(fontSize: 20),
                );
              }),
              SizedBox(height: 5),
              Divider(height: 1, thickness: 2, color: Colors.red, indent: 10, endIndent: 10),
            ],
          ),
        ),
      ),
    );
  }
}
