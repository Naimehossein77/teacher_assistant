import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Userr {
  Userr({@required this.uid, this.photoUrl, this.displayName});
  final String uid;
  final String displayName;
  final String photoUrl;
}

abstract class AuthBase {
  Stream<User> get onAuthChanged;
  Future<Userr> createUserWithEmailAndPassword(String email, String password);
  Future<Userr> signInWithEmailAndPassword(String email, String password);
  Future<User> currentUser();
  Future<String> updateUser(String name);
  Future<void> SignOut();
  Future<User> signInGoogle();
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;

  Userr _userFromFirebase(User user) {
    if (user == null) {
      return null;
    }
    return Userr(
        uid: user.uid, photoUrl: user.photoURL, displayName: user.displayName);
  }


  Stream<User> get onAuthChanged {
    return _firebaseAuth.authStateChanges().map(
          (User firebaseUser) => (firebaseUser != null) ? firebaseUser : null,
        );
  }

  Future<String> updateUser(String name) async {
    final user = await _firebaseAuth.currentUser;
    await user.updateProfile(
      displayName: name,
    );
    return user.uid;
  }

  Future<User> currentUser() async {
    final user = await _firebaseAuth.currentUser;
    return user;
  }

  Future<Userr> createUserWithEmailAndPassword(
      String email, String password) async {
    final authResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return _userFromFirebase(authResult.user);
  }

  Future<Userr> signInWithEmailAndPassword(
      String email, String password) async {
    final authResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return _userFromFirebase(authResult.user);
  }

  Future<void> SignOut() async {
    final gsignin = GoogleSignIn();
    await gsignin.signOut();
    await _firebaseAuth.signOut();
  }

  Future<User> signInGoogle() async {
    final googleSignIn = GoogleSignIn();
    final account = await googleSignIn.signIn();
    if (account != null) {
      GoogleSignInAuthentication googleAuth = await account.authentication;
      if (googleAuth.accessToken != null && googleAuth.idToken != null) {
        final result = await _firebaseAuth.signInWithCredential(
            GoogleAuthProvider.credential(
                idToken: googleAuth.idToken,
                accessToken: googleAuth.accessToken));
        return result.user;
      }
    }
  }
}
