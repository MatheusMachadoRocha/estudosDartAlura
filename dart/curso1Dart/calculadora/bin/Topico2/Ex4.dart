import 'dart:io';

void main() {
  print('Digite o número de horas trabalhadas:');
  int horasTrabalhadas = int.parse(stdin.readLineSync()!);

  double taxaPorHora = 50.0;
  double salarioBruto = horasTrabalhadas * taxaPorHora;

  double desconto = salarioBruto * 0.05;
  double salarioLiquido = salarioBruto - desconto;

  print('O salário líquido é R\$ $salarioLiquido.');
}