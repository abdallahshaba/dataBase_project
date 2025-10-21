import 'package:e_commerce_app14/apiLink.dart';
import 'package:e_commerce_app14/core/class/crud.dart';
import 'package:get/get.dart';


class HomeData {
  Crud crud = Get.find();
   HomeData(this.crud);

    getData()async{
      var response = await crud.postData(Apilink.home, {});
      return response.fold((l)=>l , (r)=>r);
    }
}