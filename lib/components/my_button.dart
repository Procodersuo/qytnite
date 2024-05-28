import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 50,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xfffFFF1BA), borderRadius: BorderRadius.circular(30)),
      child: Center(child: Text(text)),
    );
  }
}
