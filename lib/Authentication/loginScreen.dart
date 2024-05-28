import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qytnite/Authentication/sign_up_screen.dart';

import 'package:qytnite/components/access_button.dart';
import 'package:qytnite/components/auth_buttons.dart';
import 'package:qytnite/components/my_button.dart';
import 'package:qytnite/components/my_textfield.dart';
import 'package:qytnite/constants/constatnt.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xfff142135), Color(0xfff816F75)],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: screenSize.height * 0.05),
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: screenSize.height * 0.2,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
                  child: Row(
                    children: [
                      Text(
                        emailAddress,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenSize.height * 0.01),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
                  child: MyTextField(),
                ),
                SizedBox(height: screenSize.height * 0.02),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
                  child: Row(
                    children: [
                      Text(
                        password,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenSize.height * 0.01),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
                  child: MyTextField(),
                ),
                SizedBox(height: screenSize.height * 0.05),
                MyButton(text: login),
                SizedBox(height: screenSize.height * 0.03),
                AccessButton(),
                SizedBox(height: screenSize.height * 0.03),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.08),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AuthButton(
                          text: autLogin, svg: 'assets/images/facebook.svg'),
                      AuthButton(text: 'Login', svg: 'assets/images/google.svg')
                    ],
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                Text(
                  'Don\'t have an Account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      Get.off(SignUPScreen());
                    },
                    child: Text(
                      register,
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
