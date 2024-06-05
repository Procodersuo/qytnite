import 'package:flutter/material.dart';

class MyAppColors {
  static const primaryYellow = Color(0xFFFFF1BA);
  static const secondaryBlue = Color(0xFFC8DEF9);
  static const white = Color(0xFFFFFFFF);
  static const lightGray = Color(0xFFDDDFE3);
  static const darkText = Color(0xFF00008B);
  static const lightestGray = Color(0xFFE5E7EB);
  static const darkGray = Color(0xFFADACAC);
  static const containerGray = Color(0xFFBFBFBF);
  static const containerYellow = Color(0xFFF6D656);
  static const successGreen = Color(0xFF1EE21A);
  static const deviceYellow = Color(0xFFFEEA3C);
  static const deviceMaroon = Color(0xFF9E637D);
  static const deviceList = Color(0xFFF9F3BC);
  static const lightYellow = Color(0xFFFFF1BA);
  static const failureRed = Color(0xFFED3F19);
  static const dialogDescription = Color(0xFFB0B0DB);
  static const secondaryPink = Color(0xFFF9C3B8);
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