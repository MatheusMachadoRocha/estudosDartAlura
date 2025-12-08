class Animal {
  void emitirSom(){
    
  }
}

class Cachorro extends Animal{
  @override
  void emitirSom(){
    print("“O cachorro late");
  }
}

class Gato extends Animal{
  @override
  void emitirSom(){
    print("o gato miou");
  }
}