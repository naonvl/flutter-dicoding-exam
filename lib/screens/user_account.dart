import 'package:dicoding_flutter1_exam/custom-icons/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class UserAccountScreen extends StatefulWidget {
  @override
  _UserAccountScreenState createState() => _UserAccountScreenState();
}

class _UserAccountScreenState extends State<UserAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
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
                MyFlutterApp.power,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/nao.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    'Naoval Luthfi',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Front-End Dev & 3D Artist',
                  ),
                ],
              ),
              SizedBox(height: 30),
              ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    xs: 12,
                    md: 6,
                    lg: 3,
                    child: InkWell(
                      onTap: (){},
                      child: Card(
                        margin: EdgeInsets.only(bottom: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                Icon(MyFlutterApp.cog,color: Colors.blue),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'Settings',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    md: 6,
                    lg: 3,
                    child: InkWell(
                      onTap: (){},
                      child: Card(
                        margin: EdgeInsets.only(bottom: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(MyFlutterApp.edit,color: Colors.blue),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'Update Profile',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    md: 6,
                    lg: 3,
                    child: InkWell(
                      onTap: (){},
                      child: Card(
                        margin: EdgeInsets.only(bottom: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(MyFlutterApp.credit_card,color: Colors.blue),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'Purchase History',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    md: 6,
                    lg: 3,
                    child: InkWell(
                      onTap: (){},
                      child: Card(
                        margin: EdgeInsets.only(bottom: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(MyFlutterApp.doc,color: Colors.blue),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'Certificate',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
