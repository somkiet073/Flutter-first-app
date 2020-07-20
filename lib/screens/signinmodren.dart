import 'package:firstapp/screens/home.dart';
import 'package:firstapp/utility/my_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MySignin extends StatefulWidget {
  @override
  _MySigninState createState() => _MySigninState();
}

class _MySigninState extends State<MySignin> {
  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 95, bottom: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 8,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MyStyle().showLogo(),
                    MyStyle().mySizebox(),
                    MyStyle().mySizebox(),
                    emailForm(defaultFontSize, defaultFontFamily),
                    MyStyle().mySizebox(),
                    passwordForm(defaultFontSize, defaultFontFamily),
                    MyStyle().mySizebox(),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    MyStyle().mySizebox(),
                    SignInButtonWidget(),
                    ExternalLogin(),
                    //skipLoginLabel(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // สร้างเป็น function return กลับเป็น widget
  Widget emailForm(double defaultFontSize, String defaultFontFamily) =>
      Container(
        child: TextField(
          showCursor: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none)),
              filled: true,
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xFF666666),
                size: defaultFontSize,
              ),
              fillColor: Color(0xFFF2F3F5),
              hintStyle: TextStyle(
                  color: Color(0xFF666666),
                  fontFamily: defaultFontFamily,
                  fontSize: defaultFontSize),
              hintText: "Email"),
        ),
      );
}

// สร้างเป็น function return กลับเป็น widget
Widget passwordForm(double defaultFontSize, String defaultFontFamily) =>
    Container(
      child: TextField(
        showCursor: true,
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(width: 0, style: BorderStyle.none)),
            filled: true,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Color(0xFF666666),
              size: defaultFontSize,
            ),
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: Color(0xFF666666),
              size: defaultFontSize,
            ),
            fillColor: Color(0xFFF2F3F5),
            hintStyle: TextStyle(
                color: Color(0xFF666666),
                fontFamily: defaultFontFamily,
                fontSize: defaultFontSize),
            hintText: "Password"),
      ),
    );

Widget skipLoginLabel() => Container(
      child: GestureDetector(
        child: Text(
          'Skip Login',
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blue.shade900),
        ),
        onTap: () {
          MaterialPageRoute route = MaterialPageRoute(
            builder: (value) => Home(),
          );
          //Navigator.push(context, route);
        },
      ),
    );

// สร้างเป็นเป็น class statslees return กลับเป็น widget
class SignInButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.cyan.shade100,
          ),
          BoxShadow(
            color: Colors.lightBlue,
          ),
        ],
        gradient: new LinearGradient(
            colors: [
              Colors.lightBlue,
              Colors.cyan.shade100,
            ],
            begin: const FractionalOffset(0.2, 0.2),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: MaterialButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.lightBlue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
          child: Text(
            "SIGN IN",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontFamily: "WorkSansBold"),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
      ),
    );
  }
}

class ExternalLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Colors.black12,
                          Colors.black54,
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 100.0,
                  height: 1.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    "Or",
                    style: TextStyle(
                        color: Color(0xFF2c2b2b),
                        fontSize: 16.0,
                        fontFamily: "WorkSansMedium"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Colors.black54,
                          Colors.black12,
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 100.0,
                  height: 1.0,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, right: 40.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlue,
                    ),
                    child: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                  onTap: () => {},
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlue,
                    ),
                    child: new Icon(
                      FontAwesomeIcons.google,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
