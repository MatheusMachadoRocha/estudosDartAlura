import 'dart:async';

import 'package:dart_ssincronismo/api_key.dart';
import 'package:http/http.dart';
import 'dart:convert';



void main() {
  //StreamSubscription streamSubscription = streamController.stream.listen((String info) { // faz o stream ser parte de uma inscrição onde ele ira escutar a informacao
    //print(info);
  //},);
  // requestData();
  // requestDataAsync();

  //sendDataAsync({
    //"id": "NEW001",
    //"name": "Flutter",
    //"lastName": "Dart",
    //"balance": 5000,
  //});
}
 
//requestData(){
  //String url = "https://gist.githubusercontent.com/MatheusMachadoRocha/579418badb8f431c6bea57965603e4a9/raw/cc1651ededcf0929e845f96134c73090e75da4f4/accounts.json";
  //Future<Response> futureResponse = get(Uri.parse(url)); // usado para pegar um valor do futuro(conhecido como operacao assincrona) o future pega um valor do futuro pois a requisicao demora o response é a resposta gerada que é a url convertida pra uri para pegar a resposta
  //futureResponse.then((Response response){ // o then serve para quando acabar exemplo quando eu tiver a resposta execute a funcao 
    //print(response);
   // print(response.body); // sobre DYNAMIC “Esta variável pode receber qualquer tipo de dado e o Dart não vai verificar o tipo dela em tempo de compilação.”
    //List<dynamic> listAccounts = json.decode(response.body);  // cria uma lista de json convertendo json para objetos
    //Map<String,dynamic> mapCarla = listAccounts.firstWhere((element) => element["name"] == "Carla",); // faz um mapa da carla onde pega a primeira ocorrencia do nome carla e colcoa em um mapa com os valores 
    //print(mapCarla["balance"]); // pega o balance do mapa
   // streamController.add("${DateTime.now()} | Requisição de leitura (Usando then)"); // adiciona no stream o print
 // },);
  // print("Última coisa a acontecer na função."); // nao é a ultima coisa aparecer pois a funcao nao e assincrona a de cima espera entao a debaixo ja roda e dps quando tem a resposta printa o resultado 
//}



