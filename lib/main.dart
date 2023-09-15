import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/Login_page.dart';
import 'Pages/Home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
    ),
    routes: {
      "/": (context) => Home(),
      "/login": (context) => Login(),
    },
    initialRoute: "/login",
  ));
}
