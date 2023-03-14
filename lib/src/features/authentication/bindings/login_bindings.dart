
import 'package:get/get.dart';
import 'package:simpon_clone/src/features/authentication/controllers/Login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(()=> LoginController());
  }

}