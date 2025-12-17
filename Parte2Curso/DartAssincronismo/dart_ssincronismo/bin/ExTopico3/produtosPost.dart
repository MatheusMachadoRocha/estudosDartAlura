import 'dart:convert';

import 'package:http/http.dart';

void main() {
  String responseBody = '''
  [
    {"id": 1, "name": "Celular", "price": 1200.75},
    {"id": 2, "name": "Notebook", "price": 3500.10},
    {"id": 3, "name": "Tablet", "price": 1500.00}
  ]
  ''';

  List<dynamic> products = json.decode(responseBody);

    Map<String, dynamic> newProduct = {
    "id": 4,
    "name": "Monitor",
    "price": 800.00
  };
  products.add(newProduct);
  String updatedJson = json.encode(products);

  print(updatedJson);
} 

