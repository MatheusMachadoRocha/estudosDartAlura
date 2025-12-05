import 'dart:io';

void main() {
  print('Digite o valor gasto: ');
  double quantidadeGasta = double.parse(stdin.readLineSync()!);

  int cupons = (quantidadeGasta / 50).floor();
  
  print('O cliente receberá $cupons cupom(s) para esta compra.');
}