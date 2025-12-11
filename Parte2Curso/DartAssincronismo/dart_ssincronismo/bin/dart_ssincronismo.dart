import 'package:http/http.dart';
import 'dart:convert';

void main(){
  print("Ola mundo");
  requestData();
}

requestData(){
  String url = "https://gist.githubusercontent.com/MatheusMachadoRocha/579418badb8f431c6bea57965603e4a9/raw/cc1651ededcf0929e845f96134c73090e75da4f4/accounts.json";
  Future<Response> futureResponse = get(Uri.parse(url)); // usado para pegar um valor do futuro(conhecido como operacao assincrona) o future pega um valor do futuro pois a requisicao demora o response é a resposta gerada que é a url convertida pra uri para pegar a resposta
  futureResponse.then((Response response){ // o then serve para quando acabar exemplo quando eu tiver a resposta execute a funcao 
    print(response);
    print(response.body); // sobre DYNAMIC “Esta variável pode receber qualquer tipo de dado e o Dart não vai verificar o tipo dela em tempo de compilação.”
    List<dynamic> listAccounts = json.decode(response.body);  // cria uma lista de json convertendo json para objetos
    Map<String,dynamic> mapCarla = listAccounts.firstWhere((element) => element["name"] == "Carla",); // faz um mapa da carla onde pega a primeira ocorrencia do nome carla e colcoa em um mapa com os valores 
    print(mapCarla["balance"]); // pega o balance do mapa
  },);
}