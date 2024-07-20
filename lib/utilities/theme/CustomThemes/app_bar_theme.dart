import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MAppBarTheme {
  MAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 15,
    shadowColor: Colors.blueAccent,
    scrolledUnderElevation: 1,
    centerTitle: false,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.blue,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
  );

  static const darkAppBarTheme = AppBarTheme(

    elevation: 7,
    scrolledUnderElevation: 1,
    shadowColor: Colors.lightBlueAccent,
    centerTitle: false,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
  );
}