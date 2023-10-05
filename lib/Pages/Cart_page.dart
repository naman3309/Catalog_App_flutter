import 'package:catalog_app/utils/Themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Cart".text.bold.xl2.make(),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(),
    );
  }
}
