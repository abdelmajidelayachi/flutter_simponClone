
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:simpon_clone/src/features/authentication/screens/login.view.dart';
import 'package:simpon_clone/src/features/authentication/screens/register.view.dart';
import 'package:simpon_clone/src/features/classroom/screens/classroom.view.dart';
import 'package:simpon_clone/src/repository/auth_repository/exceptions/register_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(()=>const ClassroomView()): Get.offAll(() =>  LoginView());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(()=>const ClassroomView()): Get.offAll(() =>  RegisterView());
    } on FirebaseAuthException catch(e) {
      final ex = RegisterWithEmailAndPasswordFailure.code(e.code);
      print('Firebase auth Exception: ${ex.message}');
      throw ex;
      
    } catch(_) {
      const ex = RegisterWithEmailAndPasswordFailure();
      print('Firebase auth Exception: ${ex.message}');
      throw ex;

    }
  }

  
  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(()=>const ClassroomView()): Get.offAll(() =>  LoginView());
    } on FirebaseAuthException catch(e) {
      final ex = RegisterWithEmailAndPasswordFailure.code(e.code);
      print('Firebase auth Exception: ${ex.message}');
      throw ex;
      
    } catch(_) {
      const ex = RegisterWithEmailAndPasswordFailure();
      print('Firebase auth Exception: ${ex.message}');
      throw ex;
    }
  }

  Future<void> logout() async => await _auth.signOut();

  


}