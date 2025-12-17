import 'dart:convert';
import 'package:dart_ssincronismo/api_key.dart';
import 'package:http/http.dart';

sendProduct(Map<String, dynamic> product) async {
  String url1 = "https://gist.githubusercontent.com/MatheusMachadoRocha/77ee29cd97467bfc313496c8efba67b7/raw/fd8d2d657c196510107eedab4fbb9e1515d835a6/teste.json";
  String url = 'https://api.github.com/gists/77ee29cd97467bfc313496c8efba67b7';
  Response response = await get(Uri.parse(url1));
  List<dynamic> lista = json.decode(response.body);
  lista.add(product);
  String content = json.encode(lista);
  
  Response response1 = await post(Uri.parse(url),headers: {"Authorization" : "Bearer $gitHubApiKey"  },body : json.encode({
    "description" : "teste.json",
    "public" : true,
    "files" : {
      "teste.json" : {
        "content" : content}}
  }),);
  print(response1.statusCode);
}

void main() {
  var newProduct = {
    "id": 4,
    "name": "Monitor",
    "price": 800.00
  };
  sendProduct(newProduct);
} 