// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                      print('Left Pressed');
                    },
                    child: Image.asset('images/dice1.png')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      print('Right Pressed');
                    },
                    child: Image.asset('images/dice1.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
