
import 'package:get/get.dart';
import 'package:simpon_clone/src/features/authentication/controllers/register_controller.dart';

class RegisterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }

  
}