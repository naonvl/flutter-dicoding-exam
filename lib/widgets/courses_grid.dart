
import 'package:dicoding_flutter1_exam/screens/courses_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CoursesGridWidget extends StatefulWidget {
  @override
  _CoursesGridWidgetState createState() => _CoursesGridWidgetState();
}

class _CoursesGridWidgetState extends State<CoursesGridWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xs: 6,
            md: 3,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CoursesDetailScreen(),
                  ),
                );
              },
              child: Container(
                height: 125,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        alignment: Alignment(0, 0),
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.7),
                                BlendMode.dstATop),
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/cover2_400x.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 20,
                      child: Text(
                        'Motion Beast',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        '20 - 23 Lessons',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ResponsiveGridCol(
            xs: 6,
            md: 3,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CoursesDetailScreen(),
                  ),
                );
              },
              child: Container(
                height: 125,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        alignment: Alignment(0, 0),
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.7),
                                BlendMode.dstATop),
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/Getinto3dwithLZ-Cover_400x.png'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 20,
                      child: Text(
                        'Get Into 3D',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        '20 - 23 Lessons',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ResponsiveGridCol(
            xs: 6,
            md: 3,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CoursesDetailScreen(),
                  ),
                );
              },
              child: Container(
                height: 125,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        alignment: Alignment(0, 0),
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.7),
                                BlendMode.dstATop),
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/Motionsecretslogo960_400x.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 20,
                      child: Text(
                        'Motion Beast',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        '20 - 23 Lessons',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ResponsiveGridCol(
            xs: 6,
            md: 3,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CoursesDetailScreen(),
                  ),
                );
              },
              child: Container(
                height: 125,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        alignment: Alignment(0, 0),
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.7),
                                BlendMode.dstATop),
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/fund-cover_400x.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 20,
                      child: Text(
                        'Fundamentals on After Effects',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        '20 - 23 Lessons',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
