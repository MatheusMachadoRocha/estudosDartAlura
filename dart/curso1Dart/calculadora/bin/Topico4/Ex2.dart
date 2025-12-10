import 'dart:io';
void main(){
  print("Digite o tipo de arquivo");
  List<String> arqPerm = <String>["pdf","jpg","png","docx"];
  

  void solicitaEntrada(){
    String? entrada = stdin.readLineSync();
    if(arqPerm.contains(entrada)){
      print("Arquivo Permitido");
    } else {
      print("Digite novamente");
      solicitaEntrada();
    }
  }  

  solicitaEntrada();
}