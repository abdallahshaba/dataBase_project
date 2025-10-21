import 'package:e_commerce_app14/core/class/statusRequest.dart';
import 'package:e_commerce_app14/core/functions/handlingDataContr.dart';
import 'package:e_commerce_app14/data/data_source/remote/test.dart';
import 'package:get/get.dart';

class TestController extends GetxController{

}

class TestcontrollerImp extends TestController{

  TestData testData = TestData(Get.find());
  late Statusrequest statusrequest;
  List data = [];



  getDataa()async{
    statusrequest = Statusrequest.loading;
    var response = await testData.getData();
    statusrequest = handlingDataController(response);

    if(Statusrequest.success == statusrequest){
      if(response['status'] =='success'){
         data.add(response['data']);
      }
      else {
        statusrequest = Statusrequest.undefind;
      }
     
    }
    update();
  }


  @override
  void onInit() {
    getDataa();
    super.onInit();
  }
}