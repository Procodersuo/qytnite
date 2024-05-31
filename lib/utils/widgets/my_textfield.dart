import 'package:flutter/material.dart';
import 'package:qytnite/utils/constants.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return TextField(
      controller: emailController,
      decoration: InputDecoration(
          filled: true,
          fillColor: AppConstant.textFormField,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30))),
    );
  }
}
