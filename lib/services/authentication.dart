import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _firebaseAuth = FirebaseAuth.instance;

  getUser() {
    return _firebaseAuth.currentUser;
  }

  signInAnonymously() async {
    var user = await _firebaseAuth.signInAnonymously();
    return user;
  }

  signOut() async {
    await _firebaseAuth.signOut();
    return null;
  }
}
