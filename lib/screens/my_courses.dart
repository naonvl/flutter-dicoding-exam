import 'package:dicoding_flutter1_exam/custom-icons/my_flutter_app_icons.dart';
import 'package:dicoding_flutter1_exam/screens/category_screen.dart';
import 'package:dicoding_flutter1_exam/screens/courses_detail_screen.dart';
import 'package:dicoding_flutter1_exam/screens/user_account.dart';
import 'package:dicoding_flutter1_exam/widgets/courses_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class MyCoursesScreen extends StatefulWidget {
  @override
  _MyCoursesScreenState createState() => _MyCoursesScreenState();
}

class _MyCoursesScreenState extends State<MyCoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Courses',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(MyFlutterApp.menu, color: Colors.black),
              iconSize: 18,
            ),
          );
        }),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => UserAccountScreen(),
                  ),
                );
              },
              icon: Icon(
                MyFlutterApp.user,
                color: Colors.black,
                size: 18,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 250,
                  alignment: Alignment(0, 0),
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.7), BlendMode.dstATop),
                      image: NetworkImage(
                          'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/Course_cover_800x.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 40,
                        left: 40,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Text(
                              'Ongoing',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'C4D Journey',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25),
                            ),
                            Text(
                              '21 Lessons',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 20),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => CoursesDetailScreen())),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    Icon(MyFlutterApp.play,
                                        color: Colors.white, size: 15),
                                    SizedBox(width: 5),
                                    Text(
                                      'Continue',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xs: 10,
                      md: 10,
                      child: TextField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintText: 'Search here...',
                            labelText: 'Search your courses',
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                              borderSide: const BorderSide(
                                  color: Colors.blue, width: 0.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 0.0),
                            ),
                            border: const OutlineInputBorder(),
                            prefixIcon: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12, 0, 12, 0),
                              child: Icon(
                                MyFlutterApp.search,
                                size: 15,
                              ),
                            )),
                        onChanged: (String value) {
                          setState(() {});
                        },
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 2,
                      sm: 2,
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All courses',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CategoryScreen(),
                          ),
                        ),
                        child: Text(
                          'Show all',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                CoursesCardList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
