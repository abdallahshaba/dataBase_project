import 'package:e_commerce_app14/appRoutes.dart';
import 'package:e_commerce_app14/core/class/statusRequest.dart';
import 'package:e_commerce_app14/core/constant/colorsStyle.dart';
import 'package:e_commerce_app14/core/constant/imageAsset.dart';
import 'package:e_commerce_app14/core/functions/handlingDataContr.dart';
import 'package:e_commerce_app14/data/data_source/remote/auth/login_remote.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';


abstract class LoginControoler extends GetxController {
   goToRegisterScreen();
   login();
}

class LoginControllerImp extends LoginControoler{
  late TextEditingController email;
  late TextEditingController password;
  
  GlobalKey<FormState> formState = GlobalKey<FormState>();


  LoginpData loginpData = LoginpData(Get.find());
   late Statusrequest statusrequest;
     List data = [];

  @override
  goToRegisterScreen() {
    Get.offAndToNamed(AppRoutes.signUp,);
  }
  
  @override
  login() async{
    var formData = formState.currentState;
    if(formData!.validate()){
         statusrequest = Statusrequest.loading;
    var response = await loginpData.postDataa(email.text , password.text);
    statusrequest = handlingDataController(response);

    if(Statusrequest.success == statusrequest){
      if(response['status'] =='success'){
         Get.snackbar("Ya", response['message']);
        Get.offNamed(AppRoutes.homeMain);
       
      }
      else {
        statusrequest = Statusrequest.serverFaliure;
         Get.defaultDialog(
              title: "ُWarning",
              titleStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.mainColor),
              middleText: response['message'], 
              middleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              actions: [
                Lottie.asset(AppImageAsset.failedFace, height: 220, width: 300)
              ]);
      }
     
    }
    update();
    }
    else{
        statusrequest = Statusrequest.failure;
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