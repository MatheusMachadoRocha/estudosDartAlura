import 'dart:io';

import 'package:dart_ssincronismo/models/account.dart';
import 'package:dart_ssincronismo/services/account_service.dart';

class AccountScreens {
  AccountService _accountService = AccountService();

  void initializeStream(){
    _accountService.stream.listen((event){
      print(event);
    },);
  }
  void runChatBot() async{
    print("Bom dia eu me chamo matheus assistente do banco de dados da empresa");
    print("que bom ter voce com a gente");

    bool isRunning = true;
    while(isRunning){
      print(" Como eu posso te ajudar? (digite o número desejado) 1- Ver todas sua contas. 2- Adicionar nova conta.3- Sair");
      String? input = stdin.readLineSync();
    if(input != null){
      switch(input){
        case "1":
          {
            await _getAllAccounts();
            break;
          }
        case "2":
          {
            await _addExampleAccount();
            break;
          }
        case "3":
          {
            isRunning = false;
            print("te vejo na proxima");
            break;
          }
        default:
          {
            print("Não entendi");
          }  
      }
    }
    
    
    }
  }
  _getAllAccounts() async {
    List<Account> listAccountes = await _accountService.getAll();
    print(listAccountes);
  }

  _addExampleAccount() async {
    Account example = Account(id: "id5", name: "jorge", lastName: "rocha", balance: 8001);
    await _accountService.addAccount(example);
  }
}