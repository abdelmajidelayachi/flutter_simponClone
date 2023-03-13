
class RegisterWithEmailAndPasswordFailure {
  final String message;
  const RegisterWithEmailAndPasswordFailure([this.message = "An Unknown Error occurred."]);

  factory RegisterWithEmailAndPasswordFailure.code(String code){
    switch (code) {
      case 'weak-password' : return const RegisterWithEmailAndPasswordFailure('Please enter a strong password.');
      case 'email-already-in-use' : return const RegisterWithEmailAndPasswordFailure('The account already exists for that email.');
      case 'invalid-email' : return const RegisterWithEmailAndPasswordFailure('Please enter a valid email.');
      case 'operation-not-allowed' : return const RegisterWithEmailAndPasswordFailure('Please enable email/password accounts in the Firebase Console.');
      case 'user-disabled' : return const RegisterWithEmailAndPasswordFailure('The user corresponding to the given email has been disabled.');
      case 'user-not-found' : return const RegisterWithEmailAndPasswordFailure('There is no user corresponding to the given email.');
      default: return const RegisterWithEmailAndPasswordFailure();
    }
  }
}