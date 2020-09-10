import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/model/tasks.dart';
import 'dart:collection';


class TaskData extends ChangeNotifier{

  List<Task> _task = [
    Task(name: "Buy Eggs"),
    Task(name: "Buy milk"),
  ];

  int get taskCount{
    return _task.length;
  }
  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }
  void addTask(String newTask){
    final tasks = Task(name: newTask);
    _task.add(tasks);
    notifyListeners();
  }

  void updateTask( Task task){
    task.toggleDone();
    notifyListeners();
  }

  void removeTask( Task task){
    _task.remove(task);
    notifyListeners();
  }

}