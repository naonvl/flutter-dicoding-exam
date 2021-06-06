import 'dart:async';

import 'package:flutter/material.dart';

class FeaturedCoursesWidget extends StatefulWidget {
  @override
  _FeaturedCoursesWidgetState createState() => _FeaturedCoursesWidgetState();
}

class _FeaturedCoursesWidgetState extends State<FeaturedCoursesWidget> {
  int _currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 550),
        curve: Curves.easeInOutSine,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new PageView.builder(
      controller: _pageController,
      itemBuilder: (context, index) {
        return new Center(
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: MediaQuery.of(context).size.width * 1,
              height: 200,
              decoration: new BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/banner${index + 1}.jpg'),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        );
      },
    );
  }
}
