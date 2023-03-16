part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const Home = _Paths.Home;
  static const CLASSROOM = _Paths.CLASSROOM;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const SPLASH = _Paths.SPLASH;
  static const BRIEFS = _Paths.BRIEFS;
  static const PROFILE = _Paths.PROFILE;
  static const BRIEF_DETAILS = _Paths.BRIEF_DETAILS;

}

abstract class _Paths {
  static const Home = '/home';
  static const CLASSROOM = '/classroom';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const SPLASH = '/splash';
  static const BRIEFS = '/brief';
  static const PROFILE = '/profile';
  static const BRIEF_DETAILS = '/brief-details';
}