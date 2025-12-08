abstract class Agendamentos {
  calculaDuracaoConsulta();
  verificaDisponibilidade();
}

class Medico implements Agendamentos {
  @override
  void calculaDuracaoConsulta() {
    print("duração de 30 minutos");
  }

  @override
  void verificaDisponibilidade() {
    print("verificar disponibilidade no calendário");
  }
}

class Dentista implements Agendamentos {
  @override
  void calculaDuracaoConsulta() {
    print("duração de 45 minutos");
  }

  @override
  void verificaDisponibilidade() {
    print("verificar disponibilidade considerando intervalos de 15 minutos");
  }
}

class GerenciadorDeAgendamentos {
  List<Agendamentos> profissionais = [];

  void adicionarProfissional(Agendamentos profissional) {
    profissionais.add(profissional);
  }

  void exibirDuracaoEDisponibilidade() {
    for (Agendamentos profissional in profissionais) {
      profissional.calculaDuracaoConsulta();
      profissional.verificaDisponibilidade();
    }
  }
}

void main() {
  Medico medico = Medico();
  Dentista dentista = Dentista();

  GerenciadorDeAgendamentos gerenciador = GerenciadorDeAgendamentos();
  gerenciador.adicionarProfissional(medico);
  gerenciador.adicionarProfissional(dentista);

  gerenciador.exibirDuracaoEDisponibilidade();
}