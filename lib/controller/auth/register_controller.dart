import 'package:e_commerce_app14/appRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


abstract class RegisterControoler extends GetxController {
   signUp();
   goToLoginScreen();
}

class RegisterControllerImp extends RegisterControoler{
  late TextEditingController email ;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController username;


  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  signUp() {
    var formData = formState.currentState;
    if(formData!.validate()){
      print("Valid");
    }
    else{
      print("Non Valid");
    }
  }
  
  @override
  goToLoginScreen() {
    Get.offNamed(AppRoutes.login);
  }



  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }

}