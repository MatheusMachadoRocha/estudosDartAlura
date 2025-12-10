mixin ControleAcesso{
  verificarPermissaoAdmin(String papel){
    return papel == 'admin';
  }
}

class ServicoUsuario with ControleAcesso{
  void deletaUser(String papel){
    if(verificarPermissaoAdmin(papel)){
      print("Usuario deletado");
    } else {
      print("Acesso Negado");
    }
  }
}

class ServicoProduto with ControleAcesso{
  void adicionarProduto(String papel){
    if(verificarPermissaoAdmin(papel)){
      print("Produto adicionado");
    } else {
      print("Acesso Negado");
    }
  }
}