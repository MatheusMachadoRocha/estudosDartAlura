void main(){
  List<String> tarefas = <String>["Estudar", "Comprar mantimentos"]; 
  listaTarefas(tarefas);
}

void listaTarefas(List<String> tarefas){
  for(String tarefa in tarefas){
    print('Tarefa: $tarefa');
  }
}