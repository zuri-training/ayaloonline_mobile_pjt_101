//import 'package:ayalo_mobile_pjt101/Screens/LoggingAndSigningScreens/continue_registration.dart';
import 'package:ayalo_mobile_pjt101/Screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterFireAuthService {
  final FirebaseAuth firebaseAuth;
  FlutterFireAuthService(this.firebaseAuth);

  Stream<User?> get authStateChanges => firebaseAuth.idTokenChanges();

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<String?> signIn({
    required String email,
    required String password,
    /*required BuildContext context*/
  }) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      print("Signed In");
      /*Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );*/
      return "Success";
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      return e.message;
    }
  }

  Future<String?> signUp({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential result = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      return user?.uid;
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      return e.message;
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }
}
/*Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Registration(),
        ),
      );*/