import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          titleTextStyle: TextStyle(color: Colors.black)));

  static ThemeData get darkTheme => ThemeData(brightness: Brightness.dark);
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBluishColor = const Color(0xff5a3b58);
}
