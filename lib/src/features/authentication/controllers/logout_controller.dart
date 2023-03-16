
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class LogoutController extends GetxController {

  final box = GetStorage();
  @override
  void onInit() {
    super.onInit();
  }

  logout(){
     Get.defaultDialog(
                title: 'Logout',
                middleText: 'Are you sure you want to logout?',
                textConfirm: 'Yes',
                textCancel: 'No',
                confirmTextColor: Colors.white,
                cancelTextColor: Colors.blue,
                buttonColor: Colors.blue,
                onConfirm: () {
                   box.remove('user');
                   Get.offAllNamed('/login');
                },
                onCancel: () {
                  Get.back();
                },
              );
  }
}