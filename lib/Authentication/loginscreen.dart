import 'package:flutter/material.dart';
import 'package:qytnite/utils/constants.dart';
import 'package:qytnite/utils/widgets/access_button.dart';
import 'package:qytnite/utils/widgets/auth_buttons.dart';
import 'package:qytnite/utils/widgets/my_button.dart';
import 'package:qytnite/utils/widgets/my_textfield.dart';

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
                    'assets/images/pngs/logo.png',
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
                        AppConstant.emailAddress,
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
                        AppConstant.password,
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
                MyButton(text: AppConstant.login),
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
                          text: AppConstant.authLogin,
                          svg: 'assets/images/svgs/facebook.svg'),
                      AuthButton(
                          text: 'Login', svg: 'assets/images/svgs/google.svg')
                    ],
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                Text(
                  'Don\'t have an Account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      AppConstant.register,
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
