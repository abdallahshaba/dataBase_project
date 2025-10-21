import 'package:e_commerce_app14/apiLink.dart';
import 'package:e_commerce_app14/core/class/crud.dart';
import 'package:get/get.dart';


class SignUpData {
  Crud crud = Get.find();
   SignUpData(this.crud);

    postDataa( username ,  phone ,  email ,  password)async{
      var response = await crud.postData(Apilink.signUp, {
        "user_name" : username,
        "user_email" : email,
        "user_password" : password , 
        "user_phone"   : phone,
      });
      return response.fold((l)=>l , (r)=>r);
    }
}