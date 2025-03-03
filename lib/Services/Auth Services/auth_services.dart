import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
//   SignIn with email and password..
  Future AccountwithEmail(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return 'Account Created';
    } catch (e) {
      print(e.toString());
    }
  }
}
