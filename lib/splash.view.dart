import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simpon_clone/src/features/authentication/screens/login.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.off(LoginView());
    });
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/logo/logo.svg',
          height: 40,
        ),
      ),
    );
  }
}
