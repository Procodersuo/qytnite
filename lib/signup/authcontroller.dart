import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qytnite/main.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final ValueNotifier<bool> obsecurePassword = ValueNotifier<bool>(true);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  bool loading = false;

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  Future<void> signUp(BuildContext context, String email, String password) async {
    loading = true;
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email.trim(),
          password: password.trim());
    } catch (error) {
      print(error.toString());
    } finally {
      loading = false;
    }
  }

  Future<void> login(BuildContext context, String email, String password) async {
    loading = true;
    try {
      UserCredential value = await _auth.signInWithEmailAndPassword(
          email: email.trim(),
          password: password.trim());
      print(value.user!.email.toString());

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    } catch (error) {
      debugPrint(error.toString());
      print(error.toString());
    } finally {
      loading = false;
    }
  }
}
