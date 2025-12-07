void main(){
  ItemEstoque p1 = ItemEstoque("Smartphone",100,2000);
  ItemEstoque p2 = ItemEstoque("notebook",50,4500.50);
  ItemEstoque p3 = ItemEstoque("teclado", 30,250);

  List<ItemEstoque> itensEstoque = <ItemEstoque>[p1,p2,p3];


  //print("${p1.produto}  ${p1.qtdeEstoque}");
  //print("${p2.produto}  ${p2.qtdeEstoque}");
  retiraEstoque(p1,20);
  colocaEstoque(p2,10);
  atualizaPreco(p3, 360);
  //print("${p1.produto}  ${p1.qtdeEstoque}");
  //print("${p2.produto}  ${p2.qtdeEstoque}");

  for(ItemEstoque item in itensEstoque){
    print(item.produto);
    print(item.qtdeEstoque);
    print(item.preco);
  }
}

class ItemEstoque{
  String produto;
  int qtdeEstoque;
  double preco;

  ItemEstoque(this.produto,this.qtdeEstoque,this.preco);
}

void retiraEstoque(ItemEstoque item,int quantidade){
  item.qtdeEstoque = item.qtdeEstoque - quantidade;
}
void colocaEstoque(ItemEstoque item,int quantidade){
  item.qtdeEstoque = item.qtdeEstoque + quantidade;
}

void atualizaPreco(ItemEstoque item,double preco){
  item.preco = preco;
}