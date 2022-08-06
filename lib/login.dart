import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "images/istocks.jpg",
                    fit: BoxFit.fill,
                  )),
              Container(
                height: 300,
                width: 300,
                color: Colors.white,
              )
            ],
          ),
        ],
      )
    );
  }
}
