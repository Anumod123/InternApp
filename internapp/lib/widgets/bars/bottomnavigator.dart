import 'package:flutter/material.dart';
import 'package:internapp/screens/account.dart';
import 'package:internapp/screens/coleges.dart';
import 'package:internapp/screens/home.dart';

import 'package:internapp/screens/saved.dart';
import 'package:internapp/screens/saved2.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  List pages = [HomeScreen(), saved(), saved2(), account(), colleges()];
  int currIndex = 0;
  void onTapped(int index) {
    setState(() {
      currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 0, 44, 81),
          currentIndex: currIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save),
              label: 'saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined),
              label: 'saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'account',
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 100, 100, 100),
          showUnselectedLabels: true,
        ));
  }
}

class collegenav extends StatefulWidget {
  const collegenav({Key? key}) : super(key: key);

  @override
  State<collegenav> createState() => _collegenavState();
}

class _collegenavState extends State<collegenav> {
  List pages = [
    colleges(),
    saved(),
    saved2(),
    account(),
  ];
  int currIndex = 0;
  void onTapped(int index) {
    setState(() {
      currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 0, 44, 81),
          currentIndex: currIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save),
              label: 'saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined),
              label: 'saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'account',
            ),
          ],
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: Color.fromARGB(255, 100, 100, 100),
          showUnselectedLabels: true,
        ));
  }
}
