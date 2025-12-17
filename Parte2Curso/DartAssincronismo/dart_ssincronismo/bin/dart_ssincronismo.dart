import 'package:dart_ssincronismo/api_key.dart';
import 'package:http/http.dart';
import 'dart:convert';

void main() {
  // print("Olá, mundo!");
  // requestData();
  // requestDataAsync();

  sendDataAsync({
    "id": "NEW001",
    "name": "Flutter",
    "lastName": "Dart",
    "balance": 5000,
  });
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
   print("Última coisa a acontecer na função."); // nao é a ultima coisa aparecer pois a funcao nao e assincrona a de cima espera entao a debaixo ja roda e dps quando tem a resposta printa o resultado 
}

Future<List<dynamic>> requestDataAsync() async { // usa o async para usar o await e dizer que a funcao e assincrona O AWAIT FALA  
    String url = "https://gist.githubusercontent.com/ricarthlima/a0eb198cb7a70696c4031e7e577de0cd/raw/356ce2c39dfd58d3d2e948d1ad87ea828544f1db/accounts.json";
    Response response = await get(Uri.parse(url)); //await espera ate que aconteca para dai proseguir com o andamento padrao
    return json.decode(response.body);
}

sendDataAsync(Map<String, dynamic> mapAccount) async {
  List<dynamic> listAccounts = await requestDataAsync();
  listAccounts.add(mapAccount);
  String content = json.encode(listAccounts);
  print(content);
  String url = "https://api.github.com/gists/579418badb8f431c6bea57965603e4a9";
  Response response = await post(Uri.parse(url),headers: {
    "Authorization" : "Bearer $gitHubApiKey"
  }, body: json.encode({
    "description" : "account.json",
    "public" : true,
    "files" : {
      "accounts.json" : {
        "content" : content,
      }
    }
  }),);
  print(response.statusCode);
}