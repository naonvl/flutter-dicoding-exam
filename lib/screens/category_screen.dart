import 'dart:ui';

import 'package:flutter/material.dart';

import '../custom-icons/my_flutter_app_icons.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          child: Text(
            'All Category',
            style: TextStyle(color: Colors.black),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(MyFlutterApp.left_open, color: Colors.black),
              iconSize: 18,
            ),
          );
        }),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    child: Container(
                      child: Center(
                        child: Text(
                          'Category ${index + 1}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.7), BlendMode.dstATop),
                          image: AssetImage(
                              'images/banner${index+1}.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 5),
              itemCount: 8),
        ),
      ),
    );
  }
}
