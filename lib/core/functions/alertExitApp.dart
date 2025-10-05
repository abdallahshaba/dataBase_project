import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


alertExitApp (){

  return Get.defaultDialog(
    title: "Alarm",
    middleText: "Would you like to exit from app",
    actions: [
      ElevatedButton(onPressed: (){exit(0);}, child: const Text("Confirm")),
      ElevatedButton(onPressed: (){Get.back();}, child: const Text("cancel")),
    ]
  );
}