import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/controllers/todo.dart';

class TodoApp extends StatelessWidget {
  TodoApp({super.key});

  late final TextEditingController _titleController = TextEditingController();

  late final TextEditingController _descController = TextEditingController();

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
                    Consumer<TodoController>(builder: (context, todo, child) {
                      return ElevatedButton(
                        onPressed: () {
                          todo.addTodo(
                              _titleController.text, _descController.text);
                          _titleController.clear();
                          _descController.clear();
                          Navigator.pop(context);
                        },
                        child: const Text('Add'),
                      );
                    }),
                  ],
                );
              });
        },
        child: const Text("Add"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<TodoController>(builder: (context, todo, child) {
          return ListView.builder(
              itemCount: todo.todos.length,
              itemBuilder: (context, index) {
                final data = todo.todos[index];

                return Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300,
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: Checkbox(
                        value: data.isCompleted,
                        onChanged: (value) {
                          todo.isCompletedTask(value!, index);
                        }),
                    title: Text(
                      data.name!,
                      style: TextStyle(
                          decoration: data.isCompleted!
                              ? TextDecoration.lineThrough
                              : null,
                          fontSize: 17,
                          color: Colors.black38,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      data.desc!,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            todo.delete(index);
                          },
                          icon: const Icon(Icons.delete),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  String newTitle = data.name!;
                                  String newDes = data.desc!;
                                  return AlertDialog(
                                    title: const Text("Edit"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextField(
                                          controller: TextEditingController(
                                              text: newTitle),
                                          onChanged: (value) {
                                            newTitle = value;
                                          },
                                          decoration: const InputDecoration(
                                              hintText: 'Title',
                                              border: OutlineInputBorder()),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        TextField(
                                          decoration: const InputDecoration(
                                              hintText: 'Title',
                                              border: OutlineInputBorder()),
                                          controller: TextEditingController(
                                              text: newDes),
                                          onChanged: (value) {
                                            newDes = value;
                                          },
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Cancel")),
                                      ElevatedButton(
                                          onPressed: () {
                                            todo.editTodo(
                                                index, newTitle, newDes);
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Edit")),
                                    ],
                                  );
                                });
                          },
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                  ),
                );
              });
        }),
      ),
    );
  }
}
