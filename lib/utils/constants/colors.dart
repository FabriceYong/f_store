import 'package:flutter/material.dart';

class FColors {
  FColors._();

// App basic Colors.
  static const Color primary = Color(0xff4b68ff);
  static const Color secondary = Color(0xffffe24b);
  static const Color accent = Color(0xffb0c7ff);

// Gradient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c5)]);

//Text Colors
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Colors.white;
  static const Color textWhite = Color(0xFFF5F5F5);

// background colors.
  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

// background container colors
  static const Color lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = FColors.white.withOpacity(.1);

// Button colors
  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecondary = Color(0xff6c7570);
  static const Color buttonDisabled = Color(0xffc4c4c4);

// Border colors
  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecondary = Color(0xffe6e6e6);

// Error Colors
  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

// Neutral Shades
  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xFF818181);
  static const Color grey = Color(0xFFA8A7A7);
  static const Color softGrey = Color(0xFFEEEEEE);
  static const Color lightGrey = Color(0xFFE7E7E7);
  static const Color white = Color(0xffffffff);
}
