import 'dart:io';
void main(){
  List<String> categorias = <String>["eletronicos", "alimentos", "vestuario", "livros"];
  print("Digite a categoria do produto (${categorias.toString()})");

  String? entrada = stdin.readLineSync();
  if(categorias.contains(entrada)){
    print("Está na categoria");
  } else {
    print("Não está na categoria");
  }
}

