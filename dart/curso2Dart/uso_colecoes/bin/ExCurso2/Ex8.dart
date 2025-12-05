void main(){
  Set<int> produtosSemana = {1, 2, 3, 4};   
  Set<int> produtosMes = {3, 4, 5, 6}; 
  imprimeTudo(produtosSemana,produtosMes);
}

void imprimeTudo(Set<int> produtosSemana,Set<int> produtosMes){
  for(int produtosSem in produtosSemana ){
    print(produtosSem);
  }

  for(int produtosMes in produtosMes ){
    print(produtosMes);
  }
}