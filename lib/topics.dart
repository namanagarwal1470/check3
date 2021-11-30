import 'package:check1/topicsPage.dart';
import 'package:flutter/material.dart';
import 'ques.dart';

class topics extends StatefulWidget {
  topics({Key? key}) : super(key: key);

  @override
  _topicsState createState() => _topicsState();
}

class _topicsState extends State<topics> {
  int k = 0;
  int z = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: (MediaQuery.of(context).size.height) * 0.1,
              margin: EdgeInsets.only(left: 50, top: 30),
              child: Text("Select Topics",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: (MediaQuery.of(context).size.height) * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Cont("Relations and Functions", "Lorem ipsum dolor sit",
                            z),
                        Cont("Matrix Calculation", "Lorem ipsum dolor sit", k),
                        Cont("Calculus and analysis", "Lorem ipsum dolor sit",
                            k),
                        Cont("Sets & Functions", "Lorem ipsum dolor sit", k),
                        Cont("Algebra", "Lorem ipsum dolor sit", k),
                        Cont("Calculus", "Lorem ipsum dolor sit", k),
                        Cont("Statistics & Probability",
                            "Lorem ipsum dolor sit", k),
                        Cont("Vector", "Lorem ipsum dolor sit", k),
                        Cont("THree Dimensional Geometry",
                            "Lorem ipsum dolor sit", k),
                        Cont("Two dimensional Geometry",
                            "Lorem ipsum dolor sit", k),
                        Cont("Realations and Functions",
                            "Lorem ipsum dolor sit", k),
                        Cont("Relations and Functions", "Lorem ipsum dolor sit",
                            k),
                      ],
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TopicsPage()));
              },
              child: Container(
                  width: double.infinity,
                  height: (MediaQuery.of(context).size.height) * 0.1,
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  )),
            )
          ],
        ));
  }

  Widget Cont(String text1, String text2, int k) {
    return Container(
        height: 60,
        margin: EdgeInsets.only(left: 15, right: 15, top: 30),
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(40)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text(
                text1 + '\n' + text2,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            SizedBox(width: (MediaQuery.of(context).size.width) * 0.2),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: k == 0 ? Colors.blue : Colors.red),
              child: Center(
                child: IconButton(
                  padding: EdgeInsets.all(5),
                  icon: Icon(Icons.check_outlined),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      if (k == 0) {
                        z = 1;
                      } else {
                        z = 0;
                      }
                    });
                  },
                ),
              ),
            )
          ],
        ));
  }
}
