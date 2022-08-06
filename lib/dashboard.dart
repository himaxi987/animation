import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
 String str;
  dashboard(this.str);
  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int s = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("animation"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            child: Image.asset("images/${widget.str}"),
          ),
          Spacer(),
        Row(children: [
          ElevatedButton(onPressed: () {
            setState((){
              Image.asset("images/${widget.str}");
            });
          }, child: Text("Back")),Spacer(),
          ElevatedButton(onPressed:  () {
            setState((){
              Image.asset("images/${widget.str}");
            });

          },child: Text("Next"),)
        ],)
        ],
      ),
    );
  }
}
