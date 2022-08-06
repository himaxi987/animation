import 'package:flutter/material.dart';
import 'package:loading_gifs/loading_gifs.dart';

class reset extends StatefulWidget {
  const reset({Key? key}) : super(key: key);

  @override
  State<reset> createState() => _resetState();
}

class _resetState extends State<reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading gif image"),
      ),
      body: FadeInImage.assetNetwork(placeholder: cupertinoActivityIndicator,
          image: "images/cupertino_activity_indicator_square_large.gif", placeholderScale: 5)

      //  Image.asset(circularProgressIndicator, scale: 10);,
    );
  }
}
