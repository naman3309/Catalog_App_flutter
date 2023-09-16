import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catalog_app/Pages/Login_page.dart';
import 'package:catalog_app/Pages/Home_page.dart';
import 'package:catalog_app/utils/Routes.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: MyRoute.homeRoute,
      routes: {
        MyRoute.loginRoute: (context) => Login(),
        MyRoute.homeRoute: (context) => Home(),
      },
    );
  }
}
