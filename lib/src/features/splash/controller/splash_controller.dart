

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:simpon_clone/src/repository/auth_repository/authentication_repository.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {

  final AuthenticationRepository _authenticationRepository = Get.find();
 
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    if(_authenticationRepository.isLogin()){
      Future.delayed(
        const Duration(seconds: 2),
        () => Get.offNamed(Routes.CLASSROOM),
      );
    }else{
      Future.delayed(
        const Duration(seconds: 2),
        () => Get.offNamed(Routes.LOGIN),
      );
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

}