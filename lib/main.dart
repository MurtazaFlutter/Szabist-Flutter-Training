import 'package:first_project/column_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: ColumnWidget(),
    );
  }
}

//
// class FirstScreen extends StatefulWidget {
//   const FirstScreen({super.key});
//
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//   int number = 0;
//
//   void increment() {
//     setState(() {
//       number++;
//     });
//   }
//
//   void decreament() {
//     setState(() {
//       number--;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "My name is Ghulam Murtaza I am tutur in Flutter",
//     );
//     // return Scaffold(
//     //     body: Center(
//     //   child: Column(
//     //     mainAxisAlignment: MainAxisAlignment.center,
//     //     crossAxisAlignment: CrossAxisAlignment.center,
//     //     children: [
//     //       const Text(
//     //         "Counter App",
//     //         style: TextStyle(
//     //           fontSize: 20,
//     //           fontWeight: FontWeight.bold,
//     //         ),
//     //       ),
//     //       const SizedBox(
//     //         height: 20,
//     //       ),
//     //       Text(
//     //         number.toString(),
//     //         style: const TextStyle(
//     //           fontSize: 30,
//     //           fontWeight: FontWeight.bold,
//     //         ),
//     //       ),
//     //       const SizedBox(
//     //         height: 20,
//     //       ),
//     //       Row(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         crossAxisAlignment: CrossAxisAlignment.center,
//     //         children: [
//     //           ElevatedButton(
//     //             onPressed: increment,
//     //             child: const Icon(Icons.add),
//     //           ),
//     //           const SizedBox(
//     //             width: 20,
//     //           ),
//     //           ElevatedButton(
//     //             onPressed: decreament,
//     //             child: const Icon(Icons.remove),
//     //           ),
//     //         ],
//     //       )
//     //     ],
//     //   ),
//     // ));
//   }
// }
