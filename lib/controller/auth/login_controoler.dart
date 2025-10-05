import 'package:e_commerce_app14/appRoutes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


abstract class LoginControoler extends GetxController {
   goToRegisterScreen();
   login();
}

class LoginControllerImp extends LoginControoler{
  late TextEditingController email;
  late TextEditingController password;
  
  GlobalKey<FormState> formState = GlobalKey<FormState>();



  @override
  goToRegisterScreen() {
    Get.offAndToNamed(AppRoutes.signUp,);
  }
  
  @override
  login() {
    var formData = formState.currentState;
    if(formData!.validate()){
      print("valid");
    }
    else{
      print("not valid");
    }
  }


  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}