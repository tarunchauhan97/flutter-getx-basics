import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:flutter_getx/process_controller.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(ProcessController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text('Shimmer Effect GetX')),
      backgroundColor: Colors.grey,
      body: Obx(
        () => Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 19.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: Shimmer.fromColors(
                  enabled: controller.isLoading(),
                    child: ListView.builder(
                    itemCount: 10,
                     itemBuilder: (_, __) => Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: controller.isLoading()
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  color: Colors.lightBlue,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 10.0,
                                      color: Colors.deepPurple,
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 10.0,
                                      color: Colors.deepPurple,
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 10.0,
                                      color: Colors.deepPurple,
                                    ),
                                  ],
                                ))
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  color: Colors.deepPurple,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Name',
                                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Job',
                                      style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Organization',
                                      style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ))
                              ],
                            )),
                ),
                baseColor: Colors.black26,
                highlightColor: Colors.teal,
              )),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () => controller.swap(),
                child: Text(controller.isLoading() ? 'Pause' : 'Play'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
