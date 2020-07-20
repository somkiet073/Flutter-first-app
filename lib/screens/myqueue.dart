import 'package:flutter/material.dart';

class MyQueue extends StatefulWidget {
  @override
  _MyQueueState createState() => _MyQueueState();
}

class _MyQueueState extends State<MyQueue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("My Queue"),
        ),
      ),
    );
  }
}
