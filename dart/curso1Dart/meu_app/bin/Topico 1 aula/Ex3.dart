import 'dart:io';

void main(){
  print("Digite seu nome");
  var name = stdin.readLineSync();
  print("Digite sua idade");
  var idade = stdin.readLineSync();
  print("Ola $name voce tem $idade");
}
