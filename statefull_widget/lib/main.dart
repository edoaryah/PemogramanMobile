import 'package:flutter/material.dart';

import 'package:statefull_widget/widgets/input_widget.dart';
import 'package:statefull_widget/widgets/result_widget.dart';
import 'package:statefull_widget/widgets/convert_widget.dart';
import 'package:statefull_widget/widgets/riwayat_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _selectedUnit = "Kelvin";
  double result = 0;

  List<String> listViewItem = [];

  final TextEditingController _inputController = TextEditingController();

  void perhitunganSuhu() {
    setState(() {
      double inputValue = double.tryParse(_inputController.text) ?? 0.0;

      if (_selectedUnit == "Kelvin")
        result = inputValue + 273;
      else
        result = (4 / 5) * inputValue;

      String fromUnit = "Celcius";
      String toUnit = _selectedUnit == "Kelvin" ? "Kelvin" : "Reamur";
      String historyItem =
          "$inputValue ° $fromUnit -> ${result.toStringAsFixed(2)} $toUnit";
      listViewItem.add(historyItem);
    });
  }

  void clearHistory() {
    setState(() {
      listViewItem.clear();
    });
  }

  var listItem = [
    "Kelvin",
    "Reamur",
  ];
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu - 2141762068"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              InputWidget(etInput: _inputController),

              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                value: _selectedUnit,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedUnit = newValue ?? "Kelvin";
                  });
                },
              ),

              ResultWidget(result: result),

              ConvertWidget(konvertHandler: perhitunganSuhu),

              Expanded(
                child: RiwayatKonversi(
                  listViewItem: listViewItem,
                  clearHistoryCallback: clearHistory,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
