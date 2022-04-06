import 'package:flutter/material.dart';
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
    final student = Student(name: 'Tarun Singh Chauhan', age: 24).obs;

    return GetMaterialApp(
      title: 'State Management By Obx and Custom Class',
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management By Obx and Custom Class'),
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
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  //student.value.name = student.value.name.toLowerCase();
                  student.update((student) {
                    student?.name = student.name.toString().toLowerCase();
                  });
                },
                child: Text("Lower Button"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  student.update((student) {
                    student?.name = student.name.toString().toUpperCase();
                  });
                },
                child: Text("Upper Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
