import 'package:catalog_app/Models/catalog.dart';
import 'package:catalog_app/Widgets/MyDrawer.dart';
import 'package:catalog_app/Widgets/Product.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
        centerTitle: true,
      ),
      // leading: Drawer(),),
      body: ListView.builder(
        itemCount: Catalog.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: Catalog.items[index]);
        },
      ),

      drawer: const MyDrawer(),
    );
  }
}
