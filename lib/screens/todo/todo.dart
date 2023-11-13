import 'package:flutter/material.dart';
import 'package:todo/models/todo.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  void initState() {
    super.initState();

    debugPrint("List length ${todos.length}");
  }

  List<Todo> todos = [];
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  void addTodo() {
    setState(() {
      Todo todo = Todo(
        name: _titleController.text,
        desc: _descController.text,
      );
      todos.add(todo);
      _titleController.clear();
      _descController.clear();
    });
  }

  void delete(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("My Todo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Add todo"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                            hintText: 'Title', border: OutlineInputBorder()),
                        controller: _titleController,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: const InputDecoration(
                            hintText: 'Description',
                            border: OutlineInputBorder()),
                        controller: _descController,
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        addTodo();
                        Navigator.pop(context);
                      },
                      child: const Text('Add'),
                    ),
                  ],
                );
              });
        },
        child: const Text("Add"),
      ),

      // body: ListView.builder(
      //     itemCount: 10,
      //     itemBuilder: (context, index) {
      //       // final data = todos[index];
      //       return const ListTile(
      //         leading: CircleAvatar(
      //           backgroundImage: AssetImage('assets/images/profile.png'),
      //         ),
      //         title: Text("Murtaza"),
      //         subtitle: Text("Where are you Murtaza? I am coming"),
      //         trailing: Text("12:00"),
      //       );
      // return ListTile(
      //   leading: Checkbox(
      //       value: data.isCompleted,
      //       onChanged: (value) {
      //         setState(() {
      //           data.isCompleted = value;
      //         });
      //       }),
      //   title: Text(
      //     data.name!,
      //     style: TextStyle(
      //       decoration:
      //           data.isCompleted! ? TextDecoration.lineThrough : null,
      //     ),
      //   ),
      //   subtitle: Text(data.desc!),
      //   trailing: Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       IconButton(
      //         onPressed: () {
      //           delete(index);
      //         },
      //         icon: const Icon(Icons.delete),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.edit),
      //       ),
      //     ],
      //   ),
      // );
      //}),
    );
  }
}
