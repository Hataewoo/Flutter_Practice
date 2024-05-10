import 'package:flutter/material.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Root Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Practice2", style: TextStyle(fontSize: 24))
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome to Flutter", style: TextStyle(fontSize: 24)),
            Padding(
            padding: EdgeInsets.all(16.0),
            child: Image.asset("assets/images/blueslime.png")),
          ],
        ),
      )
    );
  }  
}