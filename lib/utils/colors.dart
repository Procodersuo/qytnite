import 'package:flutter/material.dart';

class MyAppColors {

  static  const loginButtonColor=Color(0xFFfff1ba);
  static const textFormField=Color(0xFFffffff);
  //Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF131F32),
      Color(0xFF152237),
      Color(0xFF17253B),
      Color(0xFF7F6E74),
      Color(0xFFC19C99),
      Color(0xFFF9C3B8),
    ],
    stops: [0.0, 0.2702, 0.5123, 0.8634, 1.0003, 1.1176],
  );
  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF131F32),
      Color(0xFF152237),
      Color(0xFF17253B),
      Color(0xFF7F6E74),
      Color(0xFFC19C99),
      Color(0xFFF9C3B8),
    ],
    stops: [0.0, 0.3735, 0.6634, 1.0838, 1.2476, 1.3882],
  );
}