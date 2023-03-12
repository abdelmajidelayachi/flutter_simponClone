import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simpon_clone/views/auth/login/login.view.dart';
import 'package:simpon_clone/views/classroom/classroom.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.off(const ClassroomView());
    });
    return Scaffold(
      body:  Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 40,
        ),
      ),
    );
  }
}
