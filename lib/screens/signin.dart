import 'package:flutter/material.dart';
import 'package:firstapp/screens/home.dart';
import 'package:firstapp/utility/my_style.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[Colors.white, MyStyle().bgLoginColor],
            center: Alignment(0, -0.3),
            radius: 1.0,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MyStyle().showLogo(),
                MyStyle().mySizebox(),
                MyStyle().showTitle('My App Name'),
                MyStyle().mySizebox(),
                userForm(),
                MyStyle().mySizebox(),
                passwordForm(),
                MyStyle().mySizebox(),
                loginButton(),
                MyStyle().mySizebox(),
                MyStyle().mySizebox(),
                MyStyle().mySizebox(),
                skipLoginLabel(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget skipLoginLabel() => Container(
        child: GestureDetector(
          child: Text(
            'Skip Login',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blue.shade900
            ),
          ),
          onTap: (){
            MaterialPageRoute route = MaterialPageRoute(
              builder: (value) => Home(),
            );
            Navigator.push(context, route);
          },
        ),
      );

  Widget loginButton() => Container(
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: MyStyle().darkColor,
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ));

  Widget userForm() => Container(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_box,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(
              color: MyStyle().darkColor,
            ),
            labelText: 'User :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: MyStyle().darkColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: MyStyle().primaryColor,
              ),
            ),
          ),
        ),
      );

  Widget passwordForm() => Container(
        width: 250.0,
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(
              color: MyStyle().darkColor,
            ),
            labelText: 'password :',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: MyStyle().darkColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: MyStyle().primaryColor,
              ),
            ),
          ),
        ),
      );
}
