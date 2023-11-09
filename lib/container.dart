import 'package:flutter/material.dart';
import 'widgets/my_container.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Text Widget"),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ContainerExample(color: Colors.red),
            SizedBox(width: 10),
            ContainerExample(color: Colors.green),
            SizedBox(width: 10),
            ContainerExample(color: Colors.orange),
            SizedBox(width: 10),
            ContainerExample(color: Colors.deepPurple)
          ],
        ),
      ),
    );
  }
}


