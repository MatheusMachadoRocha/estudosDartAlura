abstract class Documento {
  String nomeDoDocumento;

  Documento(this.nomeDoDocumento);

  void imprimir() {
    print('O ${this.nomeDoDocumento} foi enviado para impressão');
  }
}

class Relatorio extends Documento{
  Relatorio(String nomeDoDocumento) : super(nomeDoDocumento);
}

void main() {
  Documento relatorio = Relatorio('Relatório Anual');
  relatorio.imprimir();
}