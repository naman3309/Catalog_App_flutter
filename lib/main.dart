import 'package:catalog_app/Pages/Cart_page.dart';
import 'package:catalog_app/utils/Themes.dart';
import 'package:flutter/material.dart';
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
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      //darkTheme: Mytheme.darkTheme,
      routes: {
        "/": (context) => const Login(),
        MyRoute.loginRoute: (context) => const Login(),
        MyRoute.homeRoute: (context) => const Home(),
        MyRoute.cartRoute: (context) => const Cart(),
      },
    );
  }
}
