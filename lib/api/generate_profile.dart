//import 'package:ayalo_mobile_pjt101/Screens/LoggingAndSigningScreens/continue_registration.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/snack_bar.dart';
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

  Future sendPasswordReset(String email, BuildContext context) async {
    try {
      await firebaseAuth
          .sendPasswordResetEmail(email: email)
          .then((value) => Navigator.of(context).popAndPushNamed('login'));
      // firebaseAuth.confirmPasswordReset(code: code, newPassword: newPassword);
      //firebaseAuth.verifyPasswordResetCode(code)
      //print(k);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "user-not-found":
          message(context: context, text: "No user found with this email.");
          break;
      }
    }
  }

  Future<String?> signIn({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      print("Signed In");

      return "Success";
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'wrong-password':
          message(context: context, text: 'Wrong password or invalid user');
          break;
        case "user-not-found":
          message(context: context, text: "No user found with this email.");
          //return "No user found with this email.";
          break;
        default:
          return "Login failed. Please try again.";
        //break;
      }
      print(e.toString());
      print('The error code is ${e.code}');
      return e.message;
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  Future<String?> signUp({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      UserCredential result = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      return user?.uid;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "account-exists-with-different-credential":
        case "email-already-in-use":
          message(
              context: context, text: "Email already used. Go to login page.");
          break;
        case "operation-not-allowed":
          message(
              context: context,
              text: "Too many requests to log into this account.");
          break;
        default:
          return "Sign up failed. Please try again.";
        //break;
      }
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