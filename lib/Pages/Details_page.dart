import "package:flutter/cupertino.dart";
import "package:velocity_x/velocity_x.dart";
import "package:catalog_app/utils/Themes.dart";
import "package:flutter/material.dart";
import "package:catalog_app/Models/catalog.dart";

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
            child: Image.network(item.image),
          ),
          Expanded(
              child: VxArc(
            height: 30,
            edge: VxEdge.top,
            arcType: VxArcType.convey,
            child: Container(
              color: Mytheme.creamColor,
              width: context.screenWidth,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    item.name.text.xl4.color(Mytheme.darkBluishColor).make(),
                    item.desc.text.xl.textStyle(context.captionStyle).make(),
                    "Voluptua stet duo clita diam est voluptua aliquyam sit, consetetur dolores sed sadipscing et aliquyam amet, diam justo magna sit sed sea lorem, elitr sed dolore justo justo dolor nonumy amet magna ut. Kasd ipsum elitr voluptua eirmod voluptua, est."
                        .text
                        .textStyle(context.captionStyle)
                        .scale(1.2)
                        .make()
                        .p32()
                  ],
                ).pOnly(top: 64),
              ),
            ),
          )),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${item.price}".text.make().pOnly(left: 16),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Mytheme.darkBluishColor),
                    shape: MaterialStateProperty.all(const StadiumBorder()),
                  ),
                  child: "Buy".text.xl.make(),
                  onPressed: () {},
                ).wh(100, 45),
              )
            ],
          ),
        ],
      ),
    );
  }
}
