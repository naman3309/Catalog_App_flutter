import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:catalog_app/Models/catalog.dart';
import 'package:catalog_app/Pages/Cart_page.dart';

import '../utils/Themes.dart';

class addCart extends StatelessWidget {
  final Items item;
  addCart({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool c = CartItems.contains(item);
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Mytheme.darkBluishColor),
        shape: MaterialStateProperty.all(const StadiumBorder()),
      ),
      onPressed: () {
        if (!c) {
          CartItems.add(item);
        }
      },
      child: c
          ? const Icon(Icons.done)
          : const Icon(CupertinoIcons.cart_fill_badge_plus),
    );
  }
}
