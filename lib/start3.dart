import "package:flutter/material.dart";
import 'dart:async';
import 'loginscreen.dart';

class start3 extends StatefulWidget {
  start3({Key? key}) : super(key: key);

  @override
  _start3State createState() => _start3State();
}

class _start3State extends State<start3> {

  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(40),
                  child: Ink(
                    decoration: ShapeDecoration(
                      color: Colors.red,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {

                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 180),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Easy tips and tricks for", style: TextStyle(fontSize: 25))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("better understanding", style: TextStyle(fontSize: 25))
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "voluptua, At vero eos et accusam et justo duo dolores et \n ea rebum.Stet clita kasd gubergren, no sea takimata\n sanctus est Lorem ipsum dolor sit amet ",
                    style: TextStyle(fontSize: 12, color: Colors.grey))
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(
                child: IconButton(
                  padding: EdgeInsets.all(5),
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(120),
                            topRight: Radius.circular(120))),
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(top: 5),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(130),
                                      topRight: Radius.circular(130))),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: Colors.white24,
                                          shape: BoxShape.circle),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: Colors.white24,
                                          shape: BoxShape.circle),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                    )
                                  ],
                                ),
                              )),
                        )
                      ],
                    )))
          ],
        )));
  }
}
