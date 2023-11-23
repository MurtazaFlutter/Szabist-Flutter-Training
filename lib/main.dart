import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/controllers/todo.dart';
import 'package:todo/firebase_options.dart';
import 'package:todo/screens/todo/todo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: ((context) => TodoController()))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TodoApp(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final List<ToDo> _todos = [];
//   late final TextEditingController _controller = TextEditingController();
//   void addTodo(String name) {
//     setState(() {
//       _todos.add(ToDo(name: name, isCompleted: false));
//     });
//     _controller.clear();
//   }

//   void onComplete(ToDo todo) {
//     setState(() {
//       todo.isCompleted = todo.isCompleted;
//     });
//   }

//   void deleteTodo(ToDo todo) {
//     setState(() {
//       _todos.removeWhere((item) => item.name == item.name);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Task Manager"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _displayDialog(context, _controller);
//         },
//         child: const Icon(Icons.add),
//       ),
//       body: ListView.builder(
//           itemCount: _todos.length,
//           itemBuilder: ((context, index) {
//             final todo = _todos[index];
//             return ListTile(
//               leading: Checkbox(
//                 value: todo.isCompleted,
//                 onChanged: (value) {
//                   onComplete(todo);
//                 },
//               ),
//               title: Text(
//                 todo.name!,
//                 style: TextStyle(
//                     decoration: todo.isCompleted!
//                         ? TextDecoration.lineThrough
//                         : TextDecoration.none),
//               ),
//               trailing: IconButton(
//                 onPressed: () => deleteTodo,
//                 icon: const Icon(Icons.delete),
//               ),
//             );
//           })),
//     );
//   }

//   Future<void> _displayDialog(
//       BuildContext context, TextEditingController controller) async {
//     return showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text("Add a To do"),
//             content: TextField(
//               controller: controller,
//               decoration: const InputDecoration(hintText: 'Type Your To do'),
//               autofocus: true,
//             ),
//             actions: [
//               OutlinedButton(
//                   style: OutlinedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12)),
//                   ),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text("Cancel")),
//               ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12))),
//                   onPressed: () {
//                     addTodo(controller.text);
//                     Navigator.pop(context);
//                   },
//                   child: const Text("Add"))
//             ],
//           );
//         });
//   }
// }
