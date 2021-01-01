import 'package:flutter/material.dart';


import 'package:todo_app_blue/Screens/FirstPage.dart';
import 'package:todo_app_blue/Widgets/AppColour.dart';


import 'AddTask.dart';
import 'Profile.dart';


class HomePagee extends StatefulWidget {
  @override
  _HomePageeState createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  int _selectedItemIndex = 0;
  final List pages = [
    FirstPage(),
    addTask(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black26,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: AppColor.orange2),
          currentIndex: _selectedItemIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedItemIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.add),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.person),
            ),
          ],
        ),
        body: pages[_selectedItemIndex]);
  }
}
