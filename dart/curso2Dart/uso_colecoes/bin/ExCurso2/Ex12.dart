void main(){
  List<Map<String, dynamic>> clientes = [ 
    {"nome": "João", "pontuacao": 6.5}, 
    {"nome": "Maria", "pontuacao": 8.7}, 
    {"nome": "Pedro", "pontuacao": 9.2}, 
    {"nome": "Ana", "pontuacao": 5.4} 
  ]; 
  pegaMaior(clientes);
}

void pegaMaior(List<Map<String, dynamic>> clientes){
  for(var cliente in clientes){
    if(cliente["pontuacao"] > 7.0){
      print(cliente["nome"]);
    }
  }
}