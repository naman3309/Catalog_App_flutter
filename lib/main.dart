import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catalog_app/Pages/Login_page.dart';
import 'package:catalog_app/Pages/Home_page.dart';
import 'package:catalog_app/utils/Routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
    ),
    routes: {
      "/": (context) => Login(),
      MyRoute.loginRoute: (context) => Login(),
      MyRoute.homeRoute: (context) => Home(),
    },
  ));
}
