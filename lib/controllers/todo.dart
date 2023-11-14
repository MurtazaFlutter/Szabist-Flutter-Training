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




  // void updateTodo(int index) {
  //   TextEditingController editName =
  //       TextEditingController(text: todos[index].name);
  //   TextEditingController editDesc =
  //       TextEditingController(text: todos[index].desc);

  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: const Text("Edit Todo"),
  //           content: Column(
  //             children: [
  //               TextField(
  //                 controller: editName,
  //                 decoration: const InputDecoration(labelText: 'Title'),
  //               ),
  //               TextField(
  //                 controller: editDesc,
  //                 decoration: const InputDecoration(
  //                   labelText: 'Description',
  //                 ),
  //               ),
  //             ],
  //           ),
  //           actions: [
  //             ElevatedButton(
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: const Text("Cancel")),
  //             ElevatedButton(
  //                 onPressed: () {
  //                   setState(() {
  //                     todos[index].name = editName.text;
  //                     todos[index].desc = editDesc.text;
  //                   });
  //                   Navigator.pop(context);
  //                 },
  //                 child: const Text("Update"))
  //           ],
  //         );
  //       });
  // }
