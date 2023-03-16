part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const CLASSROOM = _Paths.CLASSROOM;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const SPLASH = _Paths.SPLASH;
  static const BRIEFS = _Paths.BRIEFS;
}

abstract class _Paths {
  static const CLASSROOM = '/classroom';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const SPLASH = '/splash';
  static const BRIEFS = '/brief';
}