import 'package:catalog_app/Widgets/MyDrawer.dart';
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
      body: const Center(
        child: Text("HI"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
