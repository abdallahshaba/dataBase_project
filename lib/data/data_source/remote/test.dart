import 'package:e_commerce_app14/apiLink.dart';
import 'package:e_commerce_app14/core/class/crud.dart';
import 'package:get/get.dart';


class TestData {
  Crud crud = Get.find();
   TestData(this.crud);

    getData()async{
      var response = await crud.postData(Apilink.test, {});
      return response.fold((l)=>l , (r)=>r);
    }
}