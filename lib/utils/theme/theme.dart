import 'package:f_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:f_store/utils/theme/custom_themes/buttonsheet_theme.dart';
import 'package:f_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:f_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:f_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:f_store/utils/theme/custom_themes/text_theme.dart';
import 'package:f_store/utils/theme/custom_themes/eleveted_button.dart';
import 'package:flutter/material.dart';

class FAppTheme {
  FAppTheme._();

  // light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: FTextTheme.lightTheme,
    elevatedButtonTheme: FElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: FAppBarTheme.lightAppBarTheme,
    checkboxTheme: FCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: FBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: FTextFieldTheme.lightInputDecorationTheme,
  );

  // dark theme
  static ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: FTextTheme.darkTextTheme,
    appBarTheme: FAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: FElevatedButtonTheme.darkElevatedButtonTheme,
    checkboxTheme: FCheckBoxTheme.dartCheckBoxTheme,
    bottomSheetTheme: FBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: FTextFieldTheme.darkInputDecorationTheme,
  );
}
