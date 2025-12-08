class Igrediente {
  String nome;
  String tipo;

  Igrediente(this.nome, this.tipo);
  void imprimeIgrediente() {
    print("Igrediente: $nome, Tipo: $tipo");
  }
}

class Fruta extends Igrediente{
  Fruta(String nome) : super(nome, 'Fruta');
  @override
  void imprimeIgrediente() {
    print("em geral, são vegetais que não podem ser cozidos nas receitas;");
  }
}

class Legume extends Igrediente{
  Legume(String nome) : super(nome, 'Legume');
  @override
  void imprimeIgrediente() {
    print("em geral, são vegetais que precisam ser cozidos;");
  }
}

class Tempero extends Igrediente{
  Tempero(String nome) : super(nome, 'Tempero');
  @override
  void imprimeIgrediente() {
    print("são especiarias que condimentam os alimentos.");
  }
}