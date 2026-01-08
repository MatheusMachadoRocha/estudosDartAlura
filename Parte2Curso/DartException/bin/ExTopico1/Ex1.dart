void sendMessage(String message){
  try {
    // código que faz o envio da mensagem.
    print("Mensagem enviada!");
  } on Exception{
    print("Conexão com a internet falhou. Por favor, tente novamente mais tarde");
  }
}