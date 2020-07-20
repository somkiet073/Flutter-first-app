import 'package:firstapp/screens/homepage.dart';
import 'package:firstapp/screens/morepage.dart';
import 'package:firstapp/screens/myqueue.dart';
import 'package:firstapp/screens/promotion.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  int _selectedbeforeIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      if (index == 2) {
        _selectedIndex = _selectedbeforeIndex;
      } else {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.bookReader),
        title: const Text('My App Name'),
        backgroundColor: Colors.blueGrey.shade500,
      ),
      floatingActionButton: FloatingActionButton(
        mini: false,
        onPressed: () => {},
        tooltip: 'Increment',
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: buildBottomNavigationBar(),
      body: Center(
        child: getBodyWidget(),
      ),
    );
  }

  Widget buildBottomNavigationBar() => Container(
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.blueGrey,
          notchMargin: 5.0,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('HOME'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.stars,
                ),
                title: Text('PROMOTION'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.minimize,
                ),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assistant_photo),
                title: Text('MY QUEUE'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                title: Text('MORE'),
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber.shade800,
            onTap: _onItemTapped,
          ),
        ),
      );

  getBodyWidget() {
    if (_selectedIndex == 0) {
      _selectedbeforeIndex = _selectedIndex;
      return Home();
    } else if (_selectedIndex == 1) {
      _selectedbeforeIndex = _selectedIndex;
      return Promotions();
    } else if (_selectedIndex == 3) {
      _selectedbeforeIndex = _selectedIndex;
      return MyQueue();
    } else if (_selectedIndex == 4) {
      _selectedbeforeIndex = _selectedIndex;
      return MorePage();
    }
  }
}
