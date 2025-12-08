class Animal {
  void emitirSom(){

  }
}

class Cachorro extends Animal {
  @override
  void emitirSom() {
    print("Latido");
  }

  void abanarRabo(){
    print("Abanando o rabo");
  }
}

class Gato extends Animal {
  @override
  void emitirSom() {
    print("Miau");
  }

  void arranhaSofa(){
    print("Arranhando o sofá");
  }
}