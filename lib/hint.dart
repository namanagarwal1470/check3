import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class hint extends StatefulWidget {
  hint({Key? key}) : super(key: key);

  @override
  _hintState createState() => _hintState();
}

class _hintState extends State<hint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "How to use? ",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
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
            Container(
              height: (MediaQuery.of(context).size.height) * 0.4,
              width: double.infinity,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: IconButton(
                          padding: EdgeInsets.all(5),
                          icon: Icon(FontAwesomeIcons.play),
                          iconSize: 20,
                          color: Colors.red,
                          onPressed: () {
                            setState(() {
                              print("hello");
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                margin:
                    EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.yellow),
                width: (MediaQuery.of(context).size.width) * 0.8,
                height: 300,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(60))),
            )
          ]),
          Expanded(
            child: Container(
              width: double.infinity,
              height: (MediaQuery.of(context).size.height) * 0.5,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("How to use?",
                        style: TextStyle(color: Colors.red, fontSize: 30)),
                    SizedBox(height: 15),
                    Text("sit ame \n hello\nghkh",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    SizedBox(height: 15),
                    Text("Step 1",
                        style: TextStyle(color: Colors.red, fontSize: 25)),
                    SizedBox(height: 15),
                    Text("At vero\neteznoseajhddj",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    SizedBox(height: 15),
                    Text("Step 2",
                        style: TextStyle(color: Colors.red, fontSize: 25)),
                    SizedBox(height: 15),
                    Text("At vero \n et ez no \n seajhddj",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    SizedBox(height: 15),
                    Text("Step 3",
                        style: TextStyle(color: Colors.red, fontSize: 25)),
                    SizedBox(height: 15),
                    Text("At vero \n et ez no \n seajhddj",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
