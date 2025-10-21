import 'package:e_commerce_app14/appRoutes.dart';
import 'package:e_commerce_app14/core/class/statusRequest.dart';
import 'package:e_commerce_app14/core/constant/colorsStyle.dart';
import 'package:e_commerce_app14/core/constant/imageAsset.dart';
import 'package:e_commerce_app14/core/functions/handlingDataContr.dart';
import 'package:e_commerce_app14/data/data_source/remote/auth/signUp_remote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';


abstract class RegisterControoler extends GetxController {
   signUp();
   goToLoginScreen();
}

class RegisterControllerImp extends RegisterControoler{
  late TextEditingController email ;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController username;

  SignUpData signUpData = SignUpData(Get.find());
   late Statusrequest statusrequest;
     List data = [];
  GlobalKey<FormState> formState = GlobalKey<FormState>();



  @override
  signUp() async{
    var formData = formState.currentState;
    if(formData!.validate()){
       statusrequest = Statusrequest.loading;
    var response = await signUpData.postDataa(username.text , phone.text , email.text , password.text);
    statusrequest = handlingDataController(response);

    if(Statusrequest.success == statusrequest){
      if(response['status'] =='success'){
        Get.offNamed(AppRoutes.login);
      }
      else {
        statusrequest = Statusrequest.serverFaliure;
         Get.defaultDialog(
              title: "ُWarning",
              titleStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.mainColor),
              middleText: "Email Or Password Not Correct!",
              middleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              actions: [
                Lottie.asset(AppImageAsset.failedFace, height: 220, width: 300)
              ]);
      }
     
    }
    update();
    }
    else{
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