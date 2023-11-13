import 'package:flutter/material.dart';

class FlutterButtons extends StatelessWidget {
  const FlutterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Buttons"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Elevated Button"),
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              label: const Text("Elevated Icon Button")),
          TextButton(onPressed: () {}, child: const Text("Text Button")),
          OutlinedButton(onPressed: () {}, child: const Text("OutLine Button"))
        ],
      ),
    );
  }
}
