import 'dart:convert';
import 'package:http/http.dart';

void main(){
  fetchPlayerAndMakeTeams();
}

fetchPlayerAndMakeTeams() async {
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/players.json";
  Response response = await get(Uri.parse(url));

  Map<String, dynamic> mapPlayers = json.decode(response.body); // cria o mapa da resposta 

  int playersPerTeam = mapPlayers["rules"]["playersPerTeam"]; // pega quantidade de jogadores que pode ter 

  List<dynamic> listPlayers = mapPlayers["players"]; // cria uma lista de jogadores 
  listPlayers.sort(
      (a, b) => (b["roundsWaiting"] as int).compareTo(a["roundsWaiting"])); // ordena os jogadores com base no maior round esperando

  List<dynamic> listFirstTeam = listPlayers.sublist(0, playersPerTeam); // cria uma sublista comecando do zero ate o numero maximo permitido 
  List<dynamic> listSecondTeam =
      listPlayers.sublist(playersPerTeam, playersPerTeam * 2); // cria a segunda lista que comeca no 4 ate o dobre de 4

  print("**Time A**");
  for (Map<String, dynamic> person in listFirstTeam) {
    print(person["name"]); // printa o nome de geral
  }

  print("\n**Time B**");
  for (Map<String, dynamic> person in listSecondTeam) {
    print(person["name"]);
  }
}
