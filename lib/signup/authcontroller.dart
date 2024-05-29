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

  Future<void> signUp(BuildContext context) async {
    loading = true;
    try {
      await _auth.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } catch (error) {
      print(error.toString());
    } finally {
      loading = false;
    }
  }

  Future<void> login(BuildContext context) async {
    loading = true;
    try {
      UserCredential value = await _auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      print(value.user!.email.toString());
      // 2 lines commented to navigate home screen


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

//Controller for signup
// controller: _authService.emailController,

// onPressed: () {
// if (_formKey.currentState!.validate()) {
// _authService.signUp(context);
// }
// },
// child: Text('Sign Up'),
// ),



// onPressed: () {
// if (_formKey.currentState!.validate()) {
// _authService.login(context);
// }
// },
// child: Text('Login'),
// )
