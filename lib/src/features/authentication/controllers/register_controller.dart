import 'package:get/get.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();
  
  void registerUser(String name,String email, String password){
    // AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}
