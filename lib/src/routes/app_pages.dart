
import 'package:get/get.dart';
import 'package:simpon_clone/src/features/splash/screen/splash.view.dart';
import 'package:simpon_clone/src/features/authentication/screens/login.view.dart';
import 'package:simpon_clone/src/features/authentication/screens/register.view.dart';
import 'package:simpon_clone/src/features/classroom/screens/classroom.view.dart';

import '../features/briefs/screen/brief_details_view.dart';
import '../features/briefs/screen/brief_view.dart';
import '../features/home/screen/home_view.dart';
import '../features/profile/screen/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: _Paths.Home, page: () => const HomeView()),
    GetPage(
      name: _Paths.CLASSROOM, 
      page: () => const ClassroomView(),
      // TODO: Add bindings here
      ),

      GetPage(
        name: _Paths.REGISTER,
        page: () => RegisterView(),
      ),

      GetPage(
        name: _Paths.LOGIN,
        page: () => LoginView(),
      ),

      GetPage(
        name: _Paths.SPLASH,
        page: () => const SplashView(),
      ),

      GetPage(
        name: _Paths.BRIEFS,
        page: () => const BriefView(),
      ),

      GetPage(
        name: _Paths.PROFILE, 
        page:  () => const ProfileView(),
      ),
      
      
  ];
}