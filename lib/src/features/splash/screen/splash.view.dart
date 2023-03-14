import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simpon_clone/src/repository/auth_repository/authentication_repository.dart';

import '../../../../firebase_options.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  // inject controller here
  

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
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

Future<void> firebaseAuth() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
}
