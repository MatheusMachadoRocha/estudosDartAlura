import 'dart:io';
void main(){
  int idade = 0;
  String? entrada = "";
  print("Digite sua idade");
  entrada = stdin.readLineSync();
  if(entrada != null){
    if(entrada != ""){
      idade = int.parse(entrada);
    }
  }
  if(idade >= 18)
{
  print("Voce é maior de idade");
} else{
  print("Voce é menor de idade");
}  
}