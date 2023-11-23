import 'package:flutter/material.dart';
import 'package:todo/models/todo.dart';

class TodoController extends ChangeNotifier {
  final List<Todo> _todos = [];
  final bool _isCompleted = false;

  List<Todo> get todos => _todos;
  bool get isCompleted => _isCompleted;

  void addTodo(String name, String des) {
    Todo todo = Todo(name: name, desc: des);

    _todos.add(todo);

    notifyListeners();
  }

  isCompletedTask(bool isComplete, int index) {
    _todos[index].isCompleted = isComplete;
    notifyListeners();
  }

  void delete(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }

  void editTodo(int index, String newName, String newDesc) {
    _todos[index].name = newName;
    _todos[index].desc = newDesc;
    notifyListeners();
  }
}
