import 'dart:io';

void main() {
  print("Olá, me chamo Dart. Qual o seu nome?");
  var nome = stdin.readLineSync();
  String? teste = stdin.readLineSync(); // String? indica que a variavel é uma string e pode conter o valor nulo
  print("Muito prazer, $nome. Vamos fazer vários programas juntos $teste.");

}