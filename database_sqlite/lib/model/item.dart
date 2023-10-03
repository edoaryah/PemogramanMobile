// ignore_for_file: unnecessary_this, prefer_collection_literals

class Item {
  int? _id;
  String _name = "";
  int _price = 0;

  int? get id => _id;
  String get name => _name;
  set name(String value) => _name = value;
  int get price => _price;
  set price(int value) => _price = value;

  Item(this._name, this._price);

  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _name = map['name'];
    _price = map['price'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'name': _name,
      'price': _price,
    };
    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }
}
