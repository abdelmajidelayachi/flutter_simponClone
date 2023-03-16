

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {

 
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
   
      Future.delayed(
        const Duration(seconds: 2),
        () => Get.offNamed(Routes.LOGIN),
      );
    
  }

  @override
  void onClose() {
    super.onClose();
  }

}