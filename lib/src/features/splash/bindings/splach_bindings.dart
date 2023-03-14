
import 'package:get/get.dart';
import 'package:simpon_clone/src/features/splash/controller/splash_controller.dart';

class SplashBindings extends Bindings{

  @override
  void dependencies(){
    // ignore: unnecessary_cast
    Get.put(() => SplashController());
  }
}