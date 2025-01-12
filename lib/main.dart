import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        backgroundColor: Colors.lightBlue,
        body: BallApp(),
      )),
    );

class BallApp extends StatefulWidget {
  @override
  _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset("images/ball$ballNumber.png"),
        onPressed: (){
          setState(() {
           ballNumber = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
