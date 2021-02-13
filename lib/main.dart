import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = new Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(0xffffffff));
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Color(index),
      child: Stack(
        alignment: AlignmentDirectional.center,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Container(
            child: GestureDetector(
              onTap: () => changeIndex(),
              child: Text('Hey there',
                  style: TextStyle(
                      decoration: TextDecoration.none, color: Color(index))),
            ),
          ),
          Container(
            child: GestureDetector(onTap: () => changeIndex()),
          )
        ],
      ),
    );
  }
}
