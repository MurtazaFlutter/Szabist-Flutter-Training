import 'package:flutter/material.dart';

class Animator extends StatelessWidget {
  const Animator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Animator())),
              child: Hero(
                  tag: "hero-tag",
                  child: Image.asset("assets/images/code.png")),
            ),
            // ElevatedButton(
            //     onPressed: () => Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => const Animator())),
            //     child: const Text("Go"))
          ],
        ),
      ),
    );
  }
}
