import 'package:flutter/material.dart';

class MNavigationBarTheme {
  MNavigationBarTheme._();

  static NavigationBarThemeData lightNavigationBarTheme = NavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 3,
    shadowColor: Colors.blue,
    indicatorColor: Colors.blue.shade100,
    indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    labelTextStyle: MaterialStateProperty.all(
      TextStyle(color: Colors.blue),
    ),
    iconTheme: MaterialStateProperty.all(
      IconThemeData(color: Colors.blue),
    ),
  );

  static NavigationBarThemeData darkNavigationBarTheme = NavigationBarThemeData(
    backgroundColor: Colors.grey.shade900,
    indicatorColor: Colors.tealAccent.shade700,
    elevation: 5,
    shadowColor: Colors.tealAccent.shade700,
    indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    labelTextStyle: MaterialStateProperty.all(
      TextStyle(color: Colors.tealAccent),
    ),
    iconTheme: MaterialStateProperty.all(
      IconThemeData(color: Colors.tealAccent),
    ),
  );
}