import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Magic 8 Ball"),
          ),
          body: Magic8BallPage(),
          backgroundColor: Colors.blue,
        ),
      ),
    );

class Magic8BallPage extends StatefulWidget {
  @override
  State<Magic8BallPage> createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  @override
  int ballAnswers = 1;

  void shakeBall() {
    ballAnswers = Random().nextInt(5) + 1;
  }

  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      child: Image.asset("images/ball$ballAnswers.png"),
      onPressed: () {
        setState(() {
          shakeBall();
        });
      },
    ));
  }
}
