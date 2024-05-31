import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final String svg;
  const AuthButton({super.key, required this.text, required this.svg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            svg, height: 25,
            //fit: BoxFit.cover,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
