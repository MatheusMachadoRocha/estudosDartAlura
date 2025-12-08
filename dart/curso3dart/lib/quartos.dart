class Quartos {
  String tipo;
  double valorDiaria;
  int numeroDiaria;
  Quartos(this.tipo,this.valorDiaria,this.numeroDiaria);
 
  void reservar() {
    print("Reserva realizada para $numeroDiaria diarias no quarto $tipo.");
  }

  double calculaValorDiaria(){
    return valorDiaria * numeroDiaria;
  }
}

class Simples extends Quartos {
  Simples(int numeroDiarias) : super('Simples', 80, numeroDiarias);
}
class Luxo extends Quartos {
  Luxo(int numeroDiarias) : super('Luxo', 1000, numeroDiarias);
  void cafeDaManha(){
    print("Café da manhã incluso na diária do quarto luxo.");
  }

  void servicoQuarto(){
    print("Serviço de quarto incluso na diária do quarto luxo.");
  }
}
class Medio extends Quartos {
  Medio(int numeroDiarias) : super('Medio', 250, numeroDiarias);
  void cafeDaManha(){
    print("Café da manhã incluso na diária do quarto medio.");
  }
}
