import 'package:e_commerce_app14/appRoutes.dart';
import 'package:e_commerce_app14/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Middleware extends GetMiddleware{


  MyServices myServices = Get.find();

  @override
  int? priority = 0;


 @override
  // ignore: body_might_complete_normally_nullable
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreference.getString("onBoarding")=="1"){
      return const RouteSettings(name: AppRoutes.login);
    }
  }

}