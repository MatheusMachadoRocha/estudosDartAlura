import 'dart:io';
void main(){
  List<String> metPag = <String>["cartao","boleto","pix","paypal"];
  String? entrada = stdin.readLineSync();

  void aprovaMetodo(){
    entrada = stdin.readLineSync();
    if(metPag.contains(entrada)){
      print("Pagamento aprovado");
  } else{
    print("digite o metodo novamente");
    aprovaMetodo();
  }
}
  aprovaMetodo();
}