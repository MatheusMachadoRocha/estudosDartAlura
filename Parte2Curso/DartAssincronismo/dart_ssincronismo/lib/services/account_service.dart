import 'dart:async';
import 'dart:convert';

import 'package:dart_ssincronismo/api_key.dart';
import 'package:dart_ssincronismo/models/account.dart';
import 'package:http/http.dart';

/*A diferença entre a pasta "services" e a pasta "models" é fundamental para a organização e a arquitetura de um projeto de software. Usando a analogia do restaurante:

Pasta "Models" (Ingredientes e Cardápio Detalhado):

O que é: Define a estrutura dos dados (os "ingredientes"). Diz quais informações cada tipo de dado (ingrediente) carrega.
Responsabilidade: Representar os dados de forma clara e organizada.
Exemplo: A classe Account define que uma conta tem um nome (String), um saldo (double), etc. É a forma como o sistema entende o que é uma conta.
Pasta "Services" (Cozinha):

O que é: Contém a lógica de negócios e as operações que manipulam os dados (prepara os "pratos").
Responsabilidade: Realizar tarefas específicas, como buscar dados em uma API, salvar informações no banco de dados, enviar e-mails, etc.
Exemplo: A classe AccountService tem métodos para buscar todas as contas (getAll()), adicionar uma nova conta (addAccount()), etc. Ela usa o Account model para saber como os dados das contas estão estruturados.
Em resumo:

"Models" definem o que são os dados. Eles são como os ingredientes e o cardápio detalhado.
"Services" definem o que fazer com os dados. Eles são como a cozinha e os chefs.
Para deixar ainda mais claro:

Os "services" usam os "models" para realizar suas tarefas. Eles precisam saber a estrutura dos dados para poder manipulá-los corretamente.
Os "models" não dependem dos "services". Eles são apenas a representação dos dados, sem nenhuma lógica de negócios.
No contexto da aula, a pasta "models" define a estrutura dos dados das contas bancárias, enquanto a pasta "services" contém a lógica para buscar e enviar dados para a API, utilizando os models para representar as contas. */


class AccountService {
  final StreamController<String> _streamController = StreamController<String>();
  Stream<String> get stream => _streamController.stream;
  String url = "https://api.github.com/gists/579418badb8f431c6bea57965603e4a9";

  Future<List<Account>> getAll() async { // usa o async para usar o await e dizer que a funcao e assincrona O AWAIT FALA  
    //String url = "https://gist.githubusercontent.com/ricarthlima/a0eb198cb7a70696c4031e7e577de0cd/raw/356ce2c39dfd58d3d2e948d1ad87ea828544f1db/accounts.json";
    Response response = await get(Uri.parse(url)); //await espera ate que aconteca para dai proseguir com o andamento padrao
    _streamController.add("${DateTime.now()} | Requisição de leitura )"); 

    Map<String,dynamic> mapResponse = json.decode(response.body);
    List<dynamic> listDynamic = json.decode(mapResponse["files"]["accounts.json"]["content"]);

    List<Account> listAccountes = [];
    for(dynamic dyn in listDynamic){
      Map<String,dynamic> mapAccount = dyn as Map<String,dynamic>;
      Account account = Account.fromMap(mapAccount);
      listAccountes.add(account);
    }
  return listAccountes;
}

  addAccount(Account account) async {
  List<Account> listAccounts = await getAll();
  listAccounts.add(account);

  List<Map<String,dynamic>> listContent = [];
  for(Account account in listAccounts){
    listContent.add(account.toMap());
  }

  String content = json.encode(listContent);

  //String content = json.encode(listAccounts);
  //print(content);
  
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
  //print(response.statusCode);
  if(response.statusCode.toString()[0] == "2") {
      _streamController.add("${DateTime.now()} | Requisição de adicao bem sucedida(${account.name}) )");
  } else {
    _streamController.add("${DateTime.now()} | Requisição de adicao bem falhou(${account.name}) )");
  } 
}

  Account? getAccountById(int id){
    List<Account> accounts = getAll() as List<Account>;
    for(Account ac in accounts){
      if(ac.id == id){
        return ac;
      } 
    }
    return null;
  }

  void updateAccount(Account account){
    List<Account> listaContas = getAll() as List<Account>;
    for(Account ac in listaContas){
      if()
    }
  }
}

