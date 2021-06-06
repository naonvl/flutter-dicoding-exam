import 'package:dicoding_flutter1_exam/custom-icons/my_flutter_app_icons.dart';
import 'package:dicoding_flutter1_exam/screens/category_screen.dart';
import 'package:dicoding_flutter1_exam/widgets/courses_grid.dart';
import 'package:dicoding_flutter1_exam/widgets/featured_courses.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Naoval Luthfi',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 25),
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
                SizedBox(height: 25),
                Container(
                  height: 200,
                  child: FeaturedCoursesWidget(),
                ),
                SizedBox(height: 25),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choose your courses',
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
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 40.0,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: Text(
                              'Category ${index + 1}',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: 5),
                      itemCount: 5),
                ),
                CoursesGridWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
