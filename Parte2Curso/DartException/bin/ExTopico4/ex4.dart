void futureIncome(String entradaUsuario){
  try{
    double investimento = double.parse(entradaUsuario);
    print("rendimentos calculados!");
  } on Exception{
    print("Erro");
  }
  
}
