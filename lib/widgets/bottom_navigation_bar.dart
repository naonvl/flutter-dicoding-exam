import 'package:dicoding_flutter1_exam/custom-icons/my_flutter_app_icons.dart';
import 'package:dicoding_flutter1_exam/screens/my_courses.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => MyCoursesScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
          icon: Icon(MyFlutterApp.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.play),
          label: 'My Courses',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.chat),
          label: 'Message',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.user),
          label: 'Account',
        ),
      ],
    );
  }
}
