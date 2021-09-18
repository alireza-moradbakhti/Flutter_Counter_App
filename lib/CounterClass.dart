import 'package:flutter/material.dart';
import 'dart:math';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  Color cr = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Counter",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                  cr = Colors.black;
                });
              },
              icon: Icon(Icons.clear),
            )
          ],
        ),
        body: Center(
          child: Text(
            "You clicked $counter times!",
            style: TextStyle(
                fontSize: 40.0, fontStyle: FontStyle.italic, color: cr),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          onPressed: () {
            setState(() {
              ++counter;
              final random = Random();
              cr = Color.fromRGBO(random.nextInt(244), random.nextInt(244),
                  random.nextInt(244), 1.0);
            });
          },
          child: Icon(
            Icons.add,
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
