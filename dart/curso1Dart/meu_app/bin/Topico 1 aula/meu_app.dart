import 'dart:io'; //Importa a biblioteca para entrada e saída

void main() {
  print("Hello world");
  var entrada = stdin.readLineSync(); // Lê uma linha de entrada do usuário
  print(entrada);
  print("");

  print("Ola me chamo dart qual seu nome? ");
  var nome = stdin.readLineSync();
  print("ola $nome prazer em te conhecer!");


  
}
