class Cliente {
  String nomeCliente;
  List<int> _quartosReservados = <int>[];
  
  Cliente(this.nomeCliente,this._quartosReservados);

  void reservaQuarto(int quarto){
    _quartosReservados.add(quarto);
    for(int quartos in _quartosReservados){
      print(quartos);
    }
  }
  
  void cancelaReserva(int quarto){
    if(_quartosReservados.contains(quarto)){
      _quartosReservados.remove(quarto);
    }
  }
}