import 'package:flutter/material.dart';

class MyStyle {
  Color bgLoginColor =  Colors.grey.shade500;
  Color darkColor = Colors.blue.shade900;
  Color primaryColor = Colors.green.shade900;

  SizedBox mySizebox() => SizedBox(
        width: 8.0,
        height: 16.0,
      );

  Text showTitle(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.blue.shade900,
          fontWeight: FontWeight.bold,
        ),
      );

  Container showLogo() {
    return Container(
      width: 300.0,
      child: Image.asset('assets/images/29301.jpg'),
    );
  }

  MyStyle();
}
