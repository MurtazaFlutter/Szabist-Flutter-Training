import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo/models/todo.dart';

class TodoController extends ChangeNotifier {
  List<Todo> _todos = [];
  final bool _isCompleted = false;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<Todo> get todos => _todos;
  bool get isCompleted => _isCompleted;

  void setTodos(List<Todo> todos) {
    _todos = todos;
    notifyListeners();
  }

  void addTodo(String name, String des) async {
    Todo todo = Todo(title: name, desc: des, id: '', isCompleted: false);

    try {
      await _firestore.collection('todos').add(todo.toMap());
      notifyListeners();
    } catch (e) {
      print("Error adding todo $e");
    }

    _todos.add(todo);

    notifyListeners();
  }

  isCompletedTask(bool isComplete, int index) {
    _todos[index].isCompleted = isComplete;
    notifyListeners();
  }

  Future<void> delete(String id) async {
    try {
      await _firestore.collection('todos').doc(id).delete();
    } catch (e) {
      print("error $e");
    }
    notifyListeners();
  }

  Future<void> editTodo(String id, String newName, String newDesc) async {
    try {
      Todo todo =
          Todo(id: id, title: newName, desc: newDesc, isCompleted: isCompleted);
      await _firestore.collection('todos').doc(id).update(todo.toMap());
    } catch (e) {
      print("Failed");
    }
  }

  Stream<List<Todo>> getTodosStream() {
    return _firestore.collection('todos').snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => Todo.fromMap(doc.id, doc.data()))
          .toList();
    });
  }
}
