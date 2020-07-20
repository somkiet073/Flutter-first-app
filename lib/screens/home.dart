import 'package:firstapp/screens/main_page.dart';
import 'package:firstapp/screens/signinmodren.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/screens/signIn.dart';
import 'package:firstapp/screens/signup.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      drawer: showDrawer(),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    'Hello Flutter!!!',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.red.shade900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[showHeadDrawer(),TestUIDisplayMenu(), signInMenu(), signUpMenu()],
        ),
      );

  ListTile TestUIDisplayMenu() {
    return ListTile(
      leading: Icon(Icons.airplay),
      title: Text('Screens Bottom Nav'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route = MaterialPageRoute(
          builder: (value) => MainPage(),
        );
        Navigator.push(context, route);
      },
    );
  }

  ListTile signInMenu() {
    return ListTile(
      leading: Icon(Icons.android),
      title: Text('Sign In'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route = MaterialPageRoute(
          builder: (value) => MySignin(),
        );
        Navigator.push(context, route);
      },
    );
  }

  ListTile signUpMenu() {
    return ListTile(
      leading: Icon(Icons.lock_open),
      title: Text('Sign UP'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route = MaterialPageRoute(
          builder: (value) => SignUp(),
        );
        Navigator.push(context, route);
      },
    );
  }

  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
      accountName: Text('Guest'),
      accountEmail: Text('Please Login'),
    );
  }
}
