abstract class SerVivo {
  String nome;
  String tipo;

  SerVivo(this.nome, this.tipo);

  void mostrarCaracteristicas();
}

class Planta extends SerVivo {

  Planta(String nome, String tipo) : super(nome, tipo);

  @override
  void mostrarCaracteristicas() {
    print('$nome: é uma planta, não tem os cinco sentidos, é uma $tipo');
  }
}

class Animal extends SerVivo {
  int tempoVida;

  Animal(String nome, String tipo, this.tempoVida) : super(nome, tipo);

  @override
  void mostrarCaracteristicas() {
    print('$nome: tem cinco sentidos, pensa e fala, é $tipo e vive em média $tempoVida anos');
  }
}

void main() {
  Planta girassol = Planta('Girassol', 'flor');
  girassol.mostrarCaracteristicas();
  Planta laranjeira = Planta('Laranjeira', 'árvore');
  laranjeira.mostrarCaracteristicas();

  Animal humano = Animal('Ser humano', 'bípede', 75);
  humano.mostrarCaracteristicas();
  Animal gato = Animal('Gato', 'quadrúpede', 20);
  gato.mostrarCaracteristicas();
  Animal cao = Animal('Cão', 'quadrúpede', 20);
  cao.mostrarCaracteristicas();
}