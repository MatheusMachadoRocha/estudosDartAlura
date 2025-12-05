void main(){
  Map<String, double> precosProdutos = { 
    "Camiseta": 30.0, 
    "Calça": 50.0, 
    "Boné": 15.0, 
    "Tênis": 120.0 
  }; 
  somaMapa(precosProdutos);
}

void somaMapa(Map<String, double> precosProdutos){
  double soma = 0;
  for(double precoProduto in precosProdutos.values){
    soma += precoProduto;
  }
  print("Soma dos preços dos produtos: $soma");
}