import 'dart:io';
void main(){
  print("Digite as idades");
  int idade1 = int.parse(stdin.readLineSync()!);
  int idade2 = int.parse(stdin.readLineSync()!);
  int idade3 = int.parse(stdin.readLineSync()!);
  print((idade1 + idade2 + idade3) /3);
}