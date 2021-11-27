import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: (MediaQuery.of(context).size.height) * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(80))),
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                height: (MediaQuery.of(context).size.height) * 0.5,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(90))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.yellow),
                          child: Center(
                            child: IconButton(
                              padding: EdgeInsets.all(5),
                              icon: Icon(FontAwesomeIcons.times),
                              color: Colors.red,
                              onPressed: () {
                                setState(() {
                                  Navigator.pop(context);
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: (MediaQuery.of(context).size.height) * 0.1),
                    Text(
                      "Champion",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        height: (MediaQuery.of(context).size.height) * 0.03),
                    Text(
                      "Phone: 9988776655",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Email: kder@gmail.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        height: (MediaQuery.of(context).size.height) * 0.03),
                    Text(
                      "Class : 12th",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "School: kb High School",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
          Expanded(
            child: Container(
              height: (MediaQuery.of(context).size.height) * 0.4,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  cont(),
                  cont(),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }

  Widget cont() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: Colors.grey[300]),
      width: (MediaQuery.of(context).size.width) * 0.9,
      height: 300,
    );
  }
}
