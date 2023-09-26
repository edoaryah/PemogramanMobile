import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'iPhone 15', price: 799, description: 'New Camera. New Design. Newforia', image: AssetImage('images/iphone15.png')),
    Item(name: 'iPhone 14', price: 699, description: 'Big and Bigger.', image: AssetImage('images/iphone14_2.png')),
    Item(name: 'iPhone 13', price: 599, description: 'Your new superpower.', image: AssetImage('images/iphone13.png')),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edo's iPhone Store"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        // margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item, //mengirim objek item ke item_page.dart
                );
              },
              child: ItemCard(item: item), //widget ItemCard untuk menampilkan item
            );
          },
        ),
      ),
    );
  }
}

