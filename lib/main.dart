// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftbutton = 1;
  int rightbutton = 1;

  void changedice() {
    setState(() {
      leftbutton = Random().nextInt(6) + 1;
      rightbutton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[700],
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.redAccent[700],
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                    onPressed: () {
                      changedice();
                    },
                    child: Image.asset('images/dice$leftbutton.png')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      changedice();
                    },
                    child: Image.asset('images/dice$rightbutton.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
