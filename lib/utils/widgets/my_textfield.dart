import 'package:flutter/material.dart';
import 'package:qytnite/utils/constants.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Container(
      height: 50,
      child: TextField(
        keyboardType: TextInputType.text,
        controller: emailController,
        decoration: InputDecoration(
            hintStyle: TextStyle(height: 1),
            filled: true,
            fillColor: AppConstant.textFormField,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
