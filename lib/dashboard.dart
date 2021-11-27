import "package:flutter/material.dart";
import 'ques.dart';
import 'topics.dart';
import 'profile.dart';


class dashboard extends StatefulWidget {
  String text='';
  dashboard(String text);
  @override
  _dashboardState createState() => _dashboardState();
}


class _dashboardState extends State<dashboard> {




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: Drawer(
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Center(
                        child: Text(
                          'Region Infinity',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  ListTile(
                    title: const Text(
                      'Student Portal',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Notification',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Privacy Policies',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'About Us',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Contact Us',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Rate Us',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              elevation: 0,
              title:  Row(
                children: [
                  Text("Hi,  Champion",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10, left: 130),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Center(
                      child: IconButton(
                        padding: EdgeInsets.all(5),
                        icon: Icon(Icons.verified_sharp),
                        iconSize: 15,
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => profile()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
              backgroundColor: Colors.red,
            ),
            body: Column(
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height) * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                          bottomRight: Radius.circular(70))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          width: (MediaQuery.of(context).size.width) * 0.9,
                          height: 40,
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Text(
                                "",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(width: 15),
                              Container(
                                  width:
                                  (MediaQuery.of(context).size.width) * 0.7,
                                  height: 30,
                                  child: Center(
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          contentPadding:
                                          EdgeInsets.only(bottom: 15),
                                          border: InputBorder.none,
                                          hintText: "Search for Topics"),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            width: (MediaQuery.of(context).size.width) * 0.9,
                            height: (MediaQuery.of(context).size.height) *
                                0.4 *
                                0.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(
                                        top: (MediaQuery.of(context)
                                            .size
                                            .height) *
                                            0.4 *
                                            0.6 *
                                            0.2,
                                        left: (MediaQuery.of(context)
                                            .size
                                            .width) *
                                            0.9 *
                                            0.1 *
                                            0.6),
                                    child: Text("Afraid from Maths",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20))),
                                Container(
                                    margin: EdgeInsets.only(
                                        top: (MediaQuery.of(context)
                                            .size
                                            .height) *
                                            0.4 *
                                            0.6 *
                                            0.2 *
                                            0.1,
                                        left: (MediaQuery.of(context)
                                            .size
                                            .width) *
                                            0.9 *
                                            0.1 *
                                            0.6),
                                    child: Text("Now its easy!",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20))),
                                GestureDetector(
                                  onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => topics()));
                                    },
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "Start Learning",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 15),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.yellow),
                                      width: 150,
                                      height: (MediaQuery.of(context).size.height) *
                                          0.4 *
                                          0.2 *
                                          0.5,
                                      margin: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height) *
                                            0.05,
                                        left: (MediaQuery.of(context).size.width) *
                                            0.9 *
                                            0.1 *
                                            0.6,
                                        bottom:
                                        (MediaQuery.of(context).size.height) *
                                            0.4 *
                                            0.6 *
                                            0.2 *
                                            0.4,
                                      ),
                                    )),
                              ],
                            )),
                      ]),
                ),
                SizedBox(height:50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width:30),
                    GestureDetector(
                      onTap: (){
                        print("hello");},
                      child: Container(
                        height: 20,
                        color: Colors.white,

                        child: Text(
                          "Recent Searches",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          cont("75%", "Coordinate Geometry \n Class - 12"),
                          SizedBox(height: 10),
                          cont("25%", "Relations & Functions\n Class - 12"),
                          SizedBox(height: 10),
                          cont("100%", "Algebra \n Class - 12"),
                          SizedBox(height: 10),
                          cont("50%", "Matrix Calculation \n Class - 12"),
                          SizedBox(height: 10),
                          cont("75%", "Trees & Graphs \n Class-12"),
                          SizedBox(height: 10),
                          cont("75%", "Coordinate Geometry \n Class - 12"),
                          SizedBox(height: 10),
                          cont("25%", "Relations & Functions\n Class - 12"),
                          SizedBox(height: 10),
                          cont("100%", "Algebra \n Class - 12"),
                          SizedBox(height: 10),
                          cont("50%", "Matrix Calculation \n Class - 12"),
                          SizedBox(height: 10),
                          cont("75%", "Trees & Graphs \n Class-12")
                        ],
                      ),
                    ))
              ],
            )));
  }

  Widget cont(String text, String text2) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.red),
        width: (MediaQuery.of(context).size.width) * 0.9,
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 20),
            Container(
              height: 40,
              width: 40,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Center(
                child: Container(
                  height: 30,
                  width: 30,
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                  decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
              ),
            ),
            SizedBox(width: 20),
            Container(
              height: 45,
              width: (MediaQuery.of(context).size.width) * 0.6*0.9,
              color: Colors.red,
              child: Text(
                text2,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: IconButton(
                  padding: EdgeInsets.all(5),
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.red,
                  onPressed: () {
                    print("hello");
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
