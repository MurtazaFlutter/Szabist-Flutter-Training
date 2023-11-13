import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  String message = "Hello World";
  Color bg = Colors.white;
  bool isClickedBulb = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Image Widget"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              // const CircleAvatar(
              //     radius: 50,
              //     foregroundImage: AssetImage('assets/images/profile.png'),
              //     backgroundImage: AssetImage('assets/images/profile.png')),
              // const SizedBox(
              //   height: 30,
              // ),
              // CircleAvatar(
              //   child: Image.network(
              //     "https://th.bing.com/th/id/OIP.x9RnyEvKMugl9LCGpIngkwHaEo?pid=ImgDet&rs=1",
              //   ),
              // ),

              const SizedBox(
                height: 10,
              ),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "Flutter is Fun";
                    });
                  },
                  child: const Text("Click me")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bg = Colors.green;
                  });
                },
                child: const Text("Green"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bg = Colors.red;
                  });
                },
                child: const Text("Red"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bg = Colors.orange;
                  });
                },
                child: const Text("Orange"),
              ),
              const SizedBox(
                height: 30,
              ),
              Icon(
                Icons.lightbulb,
                size: 50,
                color: isClickedBulb ? Colors.red : Colors.black,
              ),
              Switch(
                  value: isClickedBulb,
                  onChanged: (bool isCheked) {
                    setState(() {
                      isClickedBulb = isCheked;
                    });
                  }),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("This is a Alert Dialog"),
                            content:
                                const Text("This is a simple Alert Dialog"),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Cancel")),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("OK"),
                              ),
                            ],
                          );
                        });
                  },
                  child: const Text("Show Alert Dialog")),
            ],
          ),
        ),
      ),
    );
  }
}
