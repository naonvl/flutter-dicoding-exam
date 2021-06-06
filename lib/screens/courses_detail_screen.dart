import 'package:flutter/material.dart';
import '../custom-icons/my_flutter_app_icons.dart';

class CoursesDetailScreen extends StatefulWidget {
  @override
  _CoursesDetailScreenState createState() => _CoursesDetailScreenState();
}

class _CoursesDetailScreenState extends State<CoursesDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          child: Text(
            'C4D Journey',
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
                      image: NetworkImage(
                          'https://cdn.shopify.com/s/files/1/0057/1509/9717/products/Course_cover_800x.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Text(
                    'What is this course about?',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text(
                    'If you have already worked with Cinema 4D and you want to master this tool in greater detail, you are in the right place. This course will make you understand the core aspects of Cinema 4D much better and will teach you to use the tools you are already familiar with in a new way. There are a lot of nuances from basic modeling skills to gamma correction in rendering that can greatly improve your works. Learn them in your own Cinema 4D Journey.',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, height: 1.5),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Text(
                    'This course included',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(MyFlutterApp.camera),
                        SizedBox(width: 20),
                        Text('Learning materials'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            MyFlutterApp.attach,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text('Projects'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            MyFlutterApp.users,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text('Collaboration'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
