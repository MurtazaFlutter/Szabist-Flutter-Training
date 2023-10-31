import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Computer Science"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Flutter"),
            ),
            const Text("Dart"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Computer Science"),
                Text("Flutter"),
                Text("Dart"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.only(left: 30, top: 20, bottom: 30),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                  child: Row(
                children: [
                  Icon(
                    Icons.apple,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    'This is the Container',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
