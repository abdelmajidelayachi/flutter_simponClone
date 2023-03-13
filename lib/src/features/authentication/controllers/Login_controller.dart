
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpon_clone/src/repository/auth_repository/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  void loginUser(String email, String password){
    AuthenticationRepository.instance.loginUserWithEmailAndPassword(email, password);
  }
}