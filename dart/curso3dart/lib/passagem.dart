mixin TaxaBagagem{
  double taxa = 0.10;
  calculaTaxa(double valor){
    return valor * taxa;
  }
}

abstract class Passagem {
  String cliente;
  double valorBase;

  Passagem(this.cliente, this.valorBase);

  double calcularPrecoFinal() {
    return valorBase;
  }
}

class PassagemComBagagem extends Passagem with TaxaBagagem{
  PassagemComBagagem(super.cliente,super.valorBase);

  @override
  double calcularPrecoFinal(){
    return valorBase *  calculaTaxa(valorBase);
  }
}

class PassagemSemBagagem extends Passagem{
  PassagemSemBagagem(super.cliente,super.valorBase);
  
}