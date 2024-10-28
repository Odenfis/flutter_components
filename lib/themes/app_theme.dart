import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.lime;
  static const Color primary2 = Colors.orange;
  static final ThemeData lighTheme = ThemeData(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary
      )
    )    
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: primary2,
      iconTheme: IconThemeData(
        color: primary2
      )
    )
  );
}