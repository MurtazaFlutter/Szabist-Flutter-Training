// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:todo/models/todo.dart';

// class DBHelper {
//   CollectionReference todos = FirebaseFirestore.instance.collection('todos');

//   Future<void> addTodo(String title, String desc) {
//     Todo todo = Todo(title: title, desc: desc);
//     return todos
//         .add({todo})
//         .then((value) => print("Todo added $value"))
//         .catchError((error) => print("failed to add todo $error"));
//   }
// }
