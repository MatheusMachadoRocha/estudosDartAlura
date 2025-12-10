import 'dart:io';

void main(){
  print("Digite uma frase");
  var frase = stdin.readLineSync()!;
  for(var i = 0; i < frase.length -1 || frase[i] != "!";i++){
    print(frase[i]);
  }
}