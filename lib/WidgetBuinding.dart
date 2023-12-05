import 'package:get/get.dart';
import 'package:linkia_ecommerce/controllers/CartController/CartController.dart';
import 'package:linkia_ecommerce/controllers/LanguageController.dart';
import 'package:linkia_ecommerce/controllers/MainController.dart';



class ControllersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController(), fenix: true);
    Get.lazyPut(() => CartController(), fenix: true);
    Get.lazyPut(() => LanguageController(), fenix: true);

  }

}