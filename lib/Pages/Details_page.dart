import "package:catalog_app/utils/Themes.dart";
import "package:flutter/material.dart";

import "package:catalog_app/Models/catalog.dart";
import "package:velocity_x/velocity_x.dart";

class DeatailPage extends StatelessWidget {
  final Items item;
  const DeatailPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      body: Column(
        children: [
          Hero(
            tag: item.id,
            child: Image.network(item.image)
            )
          ],
        )
      );
  }
}
