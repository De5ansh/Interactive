import 'package:flutter/material.dart';
import 'package:interactive/utilities/theme/CustomThemes/text_theme.dart';
import 'package:interactive/utilities/theme/CustomThemes/app_bar_theme.dart';
import 'package:interactive/utilities/theme/CustomThemes/bottom_sheet_theme.dart';
import 'package:interactive/utilities/theme/CustomThemes/checkbox_theme.dart';
import 'package:interactive/utilities/theme/CustomThemes/chip_theme.dart';
import 'package:interactive/utilities/theme/CustomThemes/elev_button_theme.dart';
import 'package:interactive/utilities/theme/CustomThemes/outlined_button_theme.dart';
import 'package:interactive/utilities/theme/CustomThemes/text_field_theme.dart';
import 'package:interactive/utilities/theme/CustomThemes/nav_bar_theme.dart';


class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.white,
    textTheme: MTextTheme.lightTextTheme,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: MBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: MCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: MChipTheme.lightChipTheme,
    elevatedButtonTheme: MElevButtonTheme.lightElevButtonTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MTextFieldTheme.lightInputDecorationTheme,
    navigationBarTheme: MNavigationBarTheme.lightNavigationBarTheme,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.black,
    textTheme: MTextTheme.darkTextTheme,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: MCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: MChipTheme.darkChipTheme,
    elevatedButtonTheme: MElevButtonTheme.darkElevButtonTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MTextFieldTheme.darkInputDecorationTheme,
    navigationBarTheme: MNavigationBarTheme.darkNavigationBarTheme,
  );
}