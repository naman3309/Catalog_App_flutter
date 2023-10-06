import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      cardColor: creamColor,
      canvasColor: Colors.white,
      buttonTheme: ButtonThemeData(buttonColor: darkBluishColor),
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          titleTextStyle: TextStyle(color: Colors.black)));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: lightBluishColor),
      buttonTheme: ButtonThemeData(buttonColor: lightBluishColor),
      appBarTheme: const AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0.0,
          titleTextStyle: TextStyle(color: Colors.white)));

  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray800;
  static Color darkBluishColor = const Color(0xff5a3b58);
  static Color lightBluishColor = Vx.yellow100;
}
