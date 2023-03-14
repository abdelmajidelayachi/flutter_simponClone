
import 'package:get/get.dart';
import 'package:simpon_clone/src/features/authentication/bindings/register_bindings.dart';
import 'package:simpon_clone/src/features/classroom/bindins/classroom_bindings.dart';
import 'package:simpon_clone/src/features/splash/screen/splash.view.dart';
import 'package:simpon_clone/src/features/authentication/screens/login.view.dart';
import 'package:simpon_clone/src/features/authentication/screens/register.view.dart';
import 'package:simpon_clone/src/features/classroom/screens/classroom.view.dart';

import '../features/authentication/bindings/login_bindings.dart';
import '../features/splash/bindings/splach_bindings.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.CLASSROOM, 
      page: () => const ClassroomView(),
      // TODO: Add bindings here
      binding: ClassroomBindings(),
      ),

      GetPage(
        name: _Paths.REGISTER,
        page: () => RegisterView(),
        binding: RegisterBindings()
      ),

      GetPage(
        name: _Paths.LOGIN,
        page: () => LoginView(),
        binding: LoginBindings(),
      ),

      GetPage(
        name: _Paths.SPLASH,
        page: () => const SplashView(),
        binding: SplashBindings()
      ),

  ];
}