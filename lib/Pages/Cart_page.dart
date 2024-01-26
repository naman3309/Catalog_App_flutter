import 'package:catalog_app/Models/catalog.dart';
import 'package:catalog_app/utils/Themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

List<Items> CartItems = [];

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Cart".text.bold.xl2.make(),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          CartItems.isEmpty
              ? const Text(
                  "Nothing to show yet",
                  textScaleFactor: 2.2,
                ).centered().expand()
              : ListView.builder(
                  itemCount: CartItems.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                        child: Image.network(CartItems[index].image)),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      onPressed: () {
                        CartItems.removeAt(index);
                        setState(() {});
                      },
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CartItems[index].name.text.make(),
                        "\$${CartItems[index].price}".text.make(),
                      ],
                    ),
                  ),
                ).p16().expand(),
          const Divider(
            height: 2,
          ),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "\$${total()}",
                  textScaleFactor: 1.5,
                ),
                30.widthBox,
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Mytheme.darkBluishColor)),
                  child: "Buy".text.xl2.make(),
                )
              ],
            ),
          ).color(Mytheme.creamColor),
        ],
      ),
    );
  }
}

num total() {
  num totalval = 0;
  for (var i = 0; i < CartItems.length; i++) {
    totalval += CartItems[i].price + 0;
  }
  return totalval;
}
