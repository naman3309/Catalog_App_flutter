import 'package:catalog_app/Models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item});
  final Items item;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text("\$${item.price}"),
    ));
  }
}
