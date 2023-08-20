import 'package:get/get.dart';
import 'package:linkia_ecommerce/controllers/MainController.dart';



class ControllersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController(), fenix: true);

  }

}