import 'package:e_commerce_app14/controller/testController.dart';
import 'package:e_commerce_app14/core/functions/handlingDataView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put((TestcontrollerImp()));
    return Scaffold(
      body: GetBuilder<TestcontrollerImp>(builder: (controller){
        return HandlingDataView(statusrequest: controller.statusrequest, widget: ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context , index){
            return Text("${controller.data}");
          }
          ));
      }),
    );
  }
}