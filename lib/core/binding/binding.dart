import 'package:e_commerce_app14/core/class/crud.dart';
import 'package:get/get.dart';

class Initialbinding extends Bindings{
  @override
  void dependencies() {
     Get.put(Crud());
  }

}
