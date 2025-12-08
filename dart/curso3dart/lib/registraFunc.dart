abstract class Funcionario{
  String nome;
  double salarioBase = 3000;

  Funcionario(this.nome);

  double calculaSalario(){
    return salarioBase;
  }
}

class Analista extends Funcionario{
  Analista(String nome) : super(nome);
  @override
  double calculaSalario() {
    return super.calculaSalario() * 1.2;
  }
}

class Gerente extends Funcionario{
  Gerente(String nome) : super(nome);
  @override
  double calculaSalario() {
    return super.calculaSalario() * 2;
  }
}