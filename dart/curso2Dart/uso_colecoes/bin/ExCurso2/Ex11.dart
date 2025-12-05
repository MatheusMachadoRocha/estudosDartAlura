void main(){
  Map<String, double> inventarioProdutos = { 
    "Camiseta": 30.0, 
    "Calça": 50.0, 
    "Boné": 15.0 
  }; 
}

void atualizaPreco(Map<String, double> inventarioProdutos,String produto,double novoPreco){
  inventarioProdutos[produto] = novoPreco;
}