import 'package:animation/dashboard.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  List images= ["burger.jpg","doughnut.png","fries.jpg","ice.png","pizza.jpg","sandwich.jpg","taco.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fast Food"),
      ),
      body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
        return OpenContainer(
          transitionDuration: Duration(seconds: 4),
            openBuilder: (context, action) {
              return dashboard(images[index]);
            },
          closedBuilder: (context, action) {
          return GridTile(child: Image.asset("images/${images[index]}"));
        },);
      },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10)),
    );
  }
}
