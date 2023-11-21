import 'package:flutter/material.dart';
import 'package:carrel/models/item.dart';

class ProductDetailPage extends StatelessWidget {
  final Item item;

  const ProductDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Name: ${item.fields.name}", style: TextStyle(fontSize: 20)),
            Text("Amount: ${item.fields.amount}"),
            Text("Price: ${item.fields.price}"),
            Text("Description: ${item.fields.description}"),
            Text("Categories: ${item.fields.categories}"),
            Text("Date Added: ${item.fields.dateAdded}"),
          ],
        ),
      ),
    );
  }
}
