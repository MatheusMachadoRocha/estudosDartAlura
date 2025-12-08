abstract class Pontuacao{
  void calculaPontos();
  void devolveColocacao();
}

class Volei extends Esporte implements Pontuacao{
  Volei(super.time);
  @override
  void calculaPontos() {
    print("Calculando pontos do vôlei");
  }

  @override
  void devolveColocacao() {
    print("Devolvendo colocação do vôlei");
  }
}

abstract class Esporte {
  String time;

  Esporte(this.time);
}