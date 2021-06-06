import 'package:dicoding_flutter1_exam/screens/courses_detail_screen.dart';
import 'package:flutter/material.dart';

class CoursesCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => CoursesDetailScreen())),
          child: Card(
            margin: EdgeInsets.only(bottom: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/Course_cover_800x.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Motion Beast',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5),
                            Text('20 - 23 Lessons'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$20',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => CoursesDetailScreen())),
          child: Card(
            margin: EdgeInsets.only(bottom: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/Getinto3dwithLZ-Cover_400x.png'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get Into 3D',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5),
                            Text('20 - 23 Lessons'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$20',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => CoursesDetailScreen())),
          child: Card(
            margin: EdgeInsets.only(bottom: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/fund-cover_400x.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fundamentals on After Effects',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5),
                            Text('20 - 23 Lessons'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$20',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => CoursesDetailScreen())),
          child: Card(
            margin: EdgeInsets.only(bottom: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/Course_cover_800x.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Motion Beast',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5),
                            Text('20 - 23 Lessons'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$20',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => CoursesDetailScreen())),
          child: Card(
            margin: EdgeInsets.only(bottom: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/Getinto3dwithLZ-Cover_400x.png'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get Into 3D',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5),
                            Text('20 - 23 Lessons'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$20',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => CoursesDetailScreen())),
          child: Card(
            margin: EdgeInsets.only(bottom: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/fund-cover_400x.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fundamentals on After Effects',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5),
                            Text('20 - 23 Lessons'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$20',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
