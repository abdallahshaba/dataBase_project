import 'package:e_commerce_app14/apiLink.dart';
import 'package:e_commerce_app14/core/class/crud.dart';
import 'package:get/get.dart';


class LoginpData {
  Crud crud = Get.find();
   LoginpData(this.crud);

    postDataa(  email ,  password)async{
      var response = await crud.postData(Apilink.login, {
        "user_email" : email,
        "user_password" : password , 
      });
      return response.fold((l)=>l , (r)=>r);
    }
}