import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpon_clone/src/repository/auth_repository/authentication_repository.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();
  
  void registerUser(String name,String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}
