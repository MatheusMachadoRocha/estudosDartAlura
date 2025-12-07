void main(){
  List<Receita> receitas = <Receita>[];
  Receita r1 = Receita("Macarrão ao pesto", 20.00);
  Receita r2 = Receita("Lasanha 4 queijos", 32.00);
  Receita r3 = Receita("Burrata com pesto", 28.00);
  receitas.add(r1);
  receitas.add(r2);
  receitas.add(r3);
}

class Receita {
  String nome;
  double preco;

  Receita(this.nome, this.preco);
}