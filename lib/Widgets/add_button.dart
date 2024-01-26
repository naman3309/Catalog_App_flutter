import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:catalog_app/Models/catalog.dart';
import 'package:catalog_app/Pages/Cart_page.dart';

import '../utils/Themes.dart';

class addCart extends StatefulWidget {
  final Items item;
  addCart({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<addCart> createState() => _addCartState();
}

late bool c;

class _addCartState extends State<addCart> {
  @override
  Widget build(BuildContext context) {
    c = CartItems.contains(widget.item);
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Mytheme.darkBluishColor),
        shape: MaterialStateProperty.all(const StadiumBorder()),
      ),
      onPressed: () {
        if (!c) {
          CartItems.add(widget.item);
        }
      },
      child: c
          ? const Icon(Icons.done)
          : const Icon(CupertinoIcons.cart_fill_badge_plus),
    );
  }
}
