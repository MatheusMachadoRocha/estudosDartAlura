abstract class Conta{
  String titular;
  double _saldo;

  Conta(this.titular,this._saldo);

  void receber(double valor){
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor){
    if(_saldo >= valor){
      _saldo -= valor;  
      imprimeSaldo();
    }
  }

  void imprimeSaldo(){
    print("O saldo de $titular é de R\$$_saldo");
  }
}

class ContaCorrente extends Conta{
  double emprestimo = 300;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }
  }
}

class ContaPoupanca extends Conta{
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);
  
  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }
}

class ContaSalario extends Conta{
  String cnpj;
  String empresa;
  ContaSalario(super.titular,super._saldo,this.cnpj,this.empresa);

  @override
  void receber(double valor) {
    super.receber(valor);
    print("O salário da $empresa, de CNPJ $cnpj no valor de R\$$valor, foi depositado!");
  }
}