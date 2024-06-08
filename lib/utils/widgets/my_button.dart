import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:qytnite/utils/constants.dart';
>>>>>>> cc98bddf57ed76a4f39014b52780935257151dfe

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.90,
      height: screenSize.height * 0.06,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xfffFFF1BA), borderRadius: BorderRadius.circular(30)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w500),
      )),
=======
    return Container(
      width: 320,
      height: 50,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppConstant.loginButtonColor,
          borderRadius: BorderRadius.circular(30)),
      child: Center(child: Text(text)),
>>>>>>> cc98bddf57ed76a4f39014b52780935257151dfe
    );
  }
}
