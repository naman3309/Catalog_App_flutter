import "package:catalog_app/utils/Themes.dart";
import "package:flutter/material.dart";

import "package:catalog_app/Models/catalog.dart";
import "package:velocity_x/velocity_x.dart";

class DetailPage extends StatelessWidget {
  final Items item;
  const DetailPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Hero(
            tag: item.id,
            child: Center(child: Image.network(item.image)),
          ),
          Expanded(
              child: VxArc(
            height: 30,
            edge: VxEdge.top,
            arcType: VxArcType.convey,
            child: Container(
              color: Mytheme.creamColor,
              width: context.screenWidth,
              child: Column(
                children: [
                  item.name.text.xl4.color(Mytheme.darkBluishColor).make(),
                  item.desc.text.xl.textStyle(context.captionStyle).make(),
                ],
              ).py64(),
            ),
          ))
        ],
      ),
    );
  }
}
