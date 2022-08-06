import 'package:animation/containeranimation.dart';
import 'package:animation/dashboard.dart';
import 'package:animation/designgrid.dart';
import 'package:animation/loadinggif.dart';
import 'package:animation/login.dart';
import 'package:animation/marghi.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: reset(),debugShowCheckedModeBanner:  false,
  ));
}

// class data extends StatefulWidget {
//   const data({Key? key}) : super(key: key);
//
//   @override
//   State<data> createState() => _dataState();
// }
//
// class _dataState extends State<data> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Animation"),
//       ),
//       body: ListView.builder(
//         itemCount: 20,
//         itemBuilder: (context, index) {
//           return OpenContainer(
//             transitionDuration: Duration(seconds: 2),
//             openBuilder: (context, action) {
//
//               return dashboard();
//             },
//             closedBuilder: (context, action) {
//               return ListTile(
//                 title: Text("$index"),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  bool firstpage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: OpenContainer(
            openBuilder: (context, action) {
              return Container();
            },
            closedBuilder: (context, action) {
              return PageTransitionSwitcher(
                transitionBuilder:
                    (child, primaryAnimation, secondaryAnimation) {
                  return FadeThroughTransition(
                    animation: primaryAnimation,
                    secondaryAnimation: secondaryAnimation,
                    child: child,
                  );
                },
                child: firstpage ? first() : second(),
              );
            },
          )),
          Spacer(),
          Row(
            children: [
              Container(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        firstpage = !firstpage;
                      });
                    },
                    child: Text("Back")),
              ),
              Container(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        firstpage = !firstpage;
                      });
                    },
                    child: Text("Next")),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second"),
      ),
      body: Container(
        height: 500,
        width: 500,
        alignment: Alignment.center,
        child: Image.asset("images/hyy1.jpg"),
      ),
    );
  }
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
      ),
      body: Container(
        height: 500,
        width: 500,
        alignment: Alignment.center,
        child: Image.asset("images/hyy.jpg"),
      ),
    );
  }
}
