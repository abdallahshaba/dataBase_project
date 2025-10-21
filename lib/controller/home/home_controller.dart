import 'package:e_commerce_app14/core/class/statusRequest.dart';
import 'package:e_commerce_app14/core/functions/handlingDataContr.dart';
import 'package:e_commerce_app14/core/services/services.dart';
import 'package:e_commerce_app14/data/data_source/remote/home/home_remote.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController{

  getData();
}

class HomeControllerImp extends HomeController {
    MyServices myServices = Get.find();

    String? username ;
    String? id;
    

      HomeData homeData = HomeData(Get.find());
  late Statusrequest statusrequest;
  List categories = [];

    initialData (){
      username = myServices.sharedPreference.getString("key");
      id = myServices.sharedPreference.getString("key");

    }

    @override
  void onInit() {
    getData();
    initialData();
    super.onInit();
  }
  
  @override
  getData()async { 
     statusrequest = Statusrequest.loading;
    var response = await homeData.getData();
    statusrequest = handlingDataController(response);

    if(Statusrequest.success == statusrequest){
      if(response['status'] =='success'){
         categories.add(response['categories']);
      }
      else {
        statusrequest = Statusrequest.undefind;
      }
     
    }
    update();
  }
}