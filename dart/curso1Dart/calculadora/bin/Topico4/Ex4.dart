import 'dart:io';
void main(){
  List<String> operacao = <String>["deposito","retirada","transferencia","pagamento"];
  double saldo = 100;
  
  print("Digite uma operação ${operacao.toString()}");

  void deposito(){
    print("Digite o valor do deposito");
    double valor = double.parse(stdin.readLineSync()!);
    if(valor > 0){
      saldo += valor;
      print(saldo);
    }else{
      print("Digite o valor valido");
      deposito();
    }
  }

  void retirada(){
    print("Digite o valor da retirada");
    double valor = double.parse(stdin.readLineSync()!);
    if(valor <= saldo){
      saldo -= valor;
      print(saldo);
    }else{
      print("Digite o valor valido");
      retirada();
    }
  }

  void transferencia(){
    print("Digite o valor da transferencia");
    double valor = double.parse(stdin.readLineSync()!);
    if(valor <= saldo){
      saldo -= valor;
      print(saldo);
    }else{
      print("Digite o valor valido");
      transferencia();
    }
  }

  void pagamento(){
    print("Digite o valor do pagamento");
    double valor = double.parse(stdin.readLineSync()!);
    if(valor <= saldo){
      saldo -= valor;
      print(saldo);
    }else{
      print("Digite o valor valido");
      pagamento();
    }
  }
  
  efetuaOp(String op){
    switch (op){
      case "deposito":
        deposito();
        break;
      case "retirada":
        retirada();
        break;
      case "transferencia":
        transferencia();
        break;
      case "pagamento":
        pagamento();
        break;
    }
  }
  verificaOp(String op){
    if(operacao.contains(op)){
      print("Operação válida");
      efetuaOp(op);
    } else{
      print("Operação inválida digite novamente");
      verificaOp(stdin.readLineSync()!);
    }
  }
  verificaOp(stdin.readLineSync()!);
}
