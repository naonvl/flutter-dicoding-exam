import 'package:dicoding_flutter1_exam/screens/homepage_screen.dart';
import 'package:dicoding_flutter1_exam/screens/my_courses.dart';
import 'package:dicoding_flutter1_exam/screens/user_account.dart';
import 'package:flutter/material.dart';

import 'custom-icons/my_flutter_app_icons.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid : true,
      title: 'Nao Flutter Exam',
      home: RouteScreen(),
    );
  }
}


class RouteScreen extends StatefulWidget {
  @override
  _RouteScreenState createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screenLists = [
    MyHomePage(),
    MyCoursesScreen(),
    UserAccountScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _screenLists[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.play),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.user),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

