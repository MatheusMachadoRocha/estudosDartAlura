import 'dart:io';

void main() {
  double pontosIniciais = 100;
  double pontosRetirados;

  print("Você tem $pontosIniciais pontos.");
  void sub(){
    print("Quantos pontos você gostaria de resgatar?");
    pontosRetirados = double.parse(stdin.readLineSync()!);
    double pontosRestantes = pontosIniciais - pontosRetirados;
    print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");
  }
  sub();
}

 