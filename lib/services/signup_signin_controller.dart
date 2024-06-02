import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;



  Future<void> signUp(BuildContext context, String email, String password) async {

    try {
      await _auth.createUserWithEmailAndPassword(
          email: email.trim(),
          password: password.trim());
    } catch (error) {
      print(error.toString());
    }
  }

  Future<void> login(BuildContext context, String email, String password) async {

    try {
      UserCredential value = await _auth.signInWithEmailAndPassword(
          email: email.trim(),
          password: password.trim());
      print(value.user!.email.toString());


    } catch (error) {
      debugPrint(error.toString());
      print(error.toString());
    }
  }
}
