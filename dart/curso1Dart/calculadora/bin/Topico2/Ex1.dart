import 'dart:io';
void main(){
  print("Digite um numero");
  double numero = double.parse(stdin.readLineSync()!);
  print(numero * 2);
}
