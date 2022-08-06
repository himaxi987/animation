import 'package:flutter/material.dart';

class exam extends StatefulWidget {
  const exam({Key? key}) : super(key: key);

  @override
  State<exam> createState() => _examState();
}

class _examState extends State<exam> {
  bool c = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("conatiner animation"),
      ),
      body: Column(
        children: [
          AnimatedContainer(
              height: c ? 500 : 100,
              width: c ? 500 : 100,
              color: c ? Colors.cyan : Colors.pinkAccent,
              duration: Duration(seconds: 2))
        ],
      ),
    );
  }
}
