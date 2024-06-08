import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qytnite/Authentication/signup_screen.dart';
import 'package:qytnite/utils/colors.dart';
import 'package:qytnite/utils/constants.dart';
import 'package:qytnite/utils/widgets/access_button.dart';
import 'package:qytnite/utils/widgets/auth_button.dart';

import 'package:qytnite/utils/widgets/my_button.dart';
import 'package:qytnite/utils/widgets/text_field_widget.dart';
import 'package:get/get.dart';

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
            gradient: MyAppColors.primaryGradient,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: screenSize.height * 0.05),
                Center(
                  child: Image.asset(
                    'assets/images/pngs/logo.png',
                    height: screenSize.height * 0.11,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.06),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
                  child: Row(
                    children: [
                      Text(
                        AppConstant.emailAddress,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenSize.height * 0.003),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.040),
                  child: AppTextField(),
                ),
                SizedBox(height: screenSize.height * 0.01),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
                  child: Row(
                    children: [
                      Text(
                        AppConstant.password,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenSize.height * 0.003),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.040),
                  child: AppTextField(),
                ),
                SizedBox(height: screenSize.height * 0.04),
                MyButton(
                  text: AppConstant.login,
                ),
                SizedBox(height: screenSize.height * 0.06),
                AccessButton(),
                SizedBox(height: screenSize.height * 0.06),
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
                SizedBox(height: screenSize.height * 0.05),
                Text(
                  'Don\'t have an Account ?',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                    onTap: () {
                      Get.put(SignUpScreen());
                    },
                    child: Text(
                      AppConstant.register,
                      style: TextStyle(color: MyAppColors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
