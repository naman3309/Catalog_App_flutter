import 'package:catalog_app/Models/catalog.dart';
import 'package:catalog_app/Widgets/add_button.dart';
import 'package:catalog_app/utils/Themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item});
  final Items item;

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Image.network(item.image)
            .box
            .p8
            .color(Mytheme.creamColor)
            .rounded
            .make()
            .p12(),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            item.name.text.xl.color(Mytheme.darkBluishColor).make(),
            item.desc.text.textStyle(context.captionStyle).make(),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              // padding: const EdgeInsets.only(top: 0),
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  "\$${item.price}".text.make(),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: addCart(item: item),
                  )
                ],
              ),
            ),
          ],
        )),
      ],
    )).rounded.white.square(150).make().py16();
  }
}
