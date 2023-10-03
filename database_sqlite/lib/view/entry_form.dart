// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unnecessary_this, no_logic_in_create_state, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:database_sqlite/model/item.dart';

class EntryForm extends StatefulWidget {
  final Item? item;
  final bool isAdding_edo;

  EntryForm({required this.item, required this.isAdding_edo});

  @override
  EntryFormState createState() => EntryFormState(this.item, this.isAdding_edo);
}

class EntryFormState extends State<EntryForm> {
  Item? item;
  bool isAdding_edo;

  EntryFormState(this.item, this.isAdding_edo);

  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  final warna_edo_1 = Color(0xFF043458);
  final warna_edo_2 = Color(0xFF69ABCE);
  final warna_edo_3 = Color(0xFFFFFFFF);

  @override
  void initState() {
    super.initState();
    if (!isAdding_edo && item != null) {
      nameController.text = item!.name;
      priceController.text = item!.price.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isAdding_edo ? 'Tambah - 2141762068' : 'Ubah - 2141762068'),
        backgroundColor: warna_edo_1,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nama Barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Harga',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: warna_edo_1,
                        onPrimary: warna_edo_3,
                      ),
                      child: Text(
                        'Save',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontSize: 15.0),
                      ),
                      onPressed: () {
                        if (isAdding_edo) {
                          item = Item(
                            nameController.text,
                            int.parse(priceController.text),
                          );
                        } else {
                          item!.name = nameController.text;
                          item!.price = int.parse(priceController.text);
                        }
                        Navigator.pop(context, item);
                      },
                    ),
                  ),
                  Container(width: 5.0),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: warna_edo_1,
                        onPrimary: warna_edo_3,
                      ),
                      child: Text(
                        'Cancel',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontSize: 15.0),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
