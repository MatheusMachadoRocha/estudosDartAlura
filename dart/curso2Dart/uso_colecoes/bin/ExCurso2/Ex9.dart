void main(){
  Set<String> produtosVendidos = {"maçã", "banana", "laranja"};   
  Set<String> produtosEstoque = {"banana", "kiwi", "laranja"}; 
  listaTarefas(produtosVendidos,produtosEstoque);
}

void listaTarefas(Set<String> produtosVendidos,Set<String> produtosEstoque){
  for(String produtoEstoque in produtosEstoque ){
    if(!produtosVendidos.contains(produtoEstoque)){
      print("Produto nao foi vendido ainda $produtoEstoque");
    }
  }
}