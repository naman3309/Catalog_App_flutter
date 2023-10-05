import 'dart:convert';

import 'package:catalog_app/Models/catalog.dart';
import 'package:catalog_app/Widgets/MyDrawer.dart';
import 'package:catalog_app/Widgets/Product.dart';
import 'package:catalog_app/utils/Themes.dart';
// import 'package:catalog_app/Widgets/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final jsn = await rootBundle.loadString("assets/file/catalog.json");
    var decodedjson = jsonDecode(jsn);
    final productData = decodedjson["products"];
    Catalog.items = List.from(productData)
        .map<Items>((Item) => Items.fromMap(Item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      appBar: AppBar(
        title: const Text(
          "Catalog App",
          textScaleFactor: 2,
        ),
        centerTitle: true,

        //  leading: const MyDrawer(),
      ),
      body: (Catalog.items.isNotEmpty)
          ? ListView.builder(
              itemCount: Catalog.items.length,
              itemBuilder: (context, index) {
                final it = Catalog.items[index];
                return InkWell(
                  onTap: () => Navigator.push(context, ),
                  child: ItemWidget(item: it),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
      drawer: const MyDrawer(),
    );
  }
}
