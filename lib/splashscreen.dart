import "package:flutter/material.dart";
import 'dart:async';
import 'start1.dart';

class splash extends StatefulWidget {
  splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => start1()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.red,
            body: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: (MediaQuery.of(context).size.height) * 0.3,
                      width: (MediaQuery.of(context).size.width) * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(400))),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        height: (MediaQuery.of(context).size.height) * 0.4,
                        width: (MediaQuery.of(context).size.width),
                        child: Center(
                          child: Text(
                            "Region Infinity",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        color: Colors.red)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: (MediaQuery.of(context).size.width) * 0.5),
                    Container(
                      height: (MediaQuery.of(context).size.height) * 0.3,
                      width: (MediaQuery.of(context).size.width) * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(400))),
                    )
                  ],
                )
              ],
            )));
  }
}
