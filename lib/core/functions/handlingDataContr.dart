import 'package:e_commerce_app14/core/class/statusRequest.dart';

handlingDataController (response){
     if(response is Statusrequest){
      return response;
     }
     else {
      return Statusrequest.success;
     }
} 