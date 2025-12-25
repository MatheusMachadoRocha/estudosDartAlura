import 'dart:async';

import 'package:dart_ssincronismo/models/task.dart';

class TaskManager {

    void main(){
      // ignore: unused_local_variable
      StreamSubscription streamSubscription = streamController.stream.listen((String info){
      print(info);
    });

      
    }
    final List<Task> _listTasks = []; // Perceba que "Task" ainda não existe.
    
    StreamController<String> streamController = StreamController<String>();
    

    addTask(Task task) {
        _listTasks.add(task);
    }
    
    toggleTaskStatus(String id) {
        int index = _listTasks.indexWhere((task) => task.id == id);
        Task task = _listTasks[index];
        task.isCompleted = !task.isCompleted;
        _listTasks[index] = task;
        streamController.add("tarefa ${id} foi marcada como ${task.isCompleted}");
    }
    
    List<Task> getAll(){
        return _listTasks;
    }
    
    Task getById(String id) {
        return _listTasks.firstWhere((task) => task.id == id);
    }
    
    delete(String id) {
        _listTasks.removeWhere((task) => task.id == id);
    }
}