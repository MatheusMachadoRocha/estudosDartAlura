
import '../lib/conta.dart';

void main(){
  Conta contaMatheus = Conta("Matheus",1000);
  Conta contaRoberta = Conta("Roberta",2000);
  ContaCorrente contaChris = ContaCorrente("Chris", 4000);
  ContaPoupanca contaDenize = ContaPoupanca("Denize", 4000);
  ContaSalario contaSalario = ContaSalario("jeff", 3000,"Naturalle sul","12345678000199");
  print(contaSalario.titular);
  contaSalario.imprimeSaldo();

  List<Conta> contas = <Conta>[contaMatheus,contaRoberta];
  print(contaMatheus.titular);

  for(Conta conta in contas){
    conta.imprimeSaldo();
  }

  contaMatheus.receber(500);
  contaRoberta.enviar(300);

  contaChris.receber(500);
  contaDenize.enviar(300);
}



 