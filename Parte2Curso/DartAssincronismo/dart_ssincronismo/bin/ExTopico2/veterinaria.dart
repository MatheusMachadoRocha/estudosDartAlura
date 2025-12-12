import 'dart:convert';
import 'package:http/http.dart';

void main(){

}

retornaCalendario() async{
  String url = "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/vet.json";
  Response response = await get(Uri.parse(url));

  List<dynamic> listaConsultas = json.decode(response.body);
  
}