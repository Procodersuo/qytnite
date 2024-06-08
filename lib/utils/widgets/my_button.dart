import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
