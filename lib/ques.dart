import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'hint.dart';

class ques extends StatefulWidget {
  ques({Key? key}) : super(key: key);

  @override
  _quesState createState() => _quesState();
}

class _quesState extends State<ques> {
  bool volumeup = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: 20, left: (MediaQuery.of(context).size.width) * 0.15),
                child: Text(
                  "Relation & Function",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 30,
                width: 30,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Center(
                  child: IconButton(
                    padding: EdgeInsets.all(5),
                    icon: Icon(FontAwesomeIcons.question),
                    iconSize: 15,
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => hint()));
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  "Method : \nManupulation",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Container(
                height: 40,
                width: 220,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Text(
                    "Change Method",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              height: (MediaQuery.of(context).size.height) * 0.65,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "Question \n    99/1",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text(
                      "Lorem ipsum dolor sit amet,\nconseteyur sed diam\nnonumy eirmod invidunt\nlabore et dolore erat"),
                  SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "Previous",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                      Container(
                        height: 40,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Expanded(
                      child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Teach Bot",
                                style: TextStyle(fontSize: 25),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.yellow),
                                    child: Center(
                                      child: IconButton(
                                        padding: EdgeInsets.all(5),
                                        icon: Icon(Icons.arrow_back_outlined),
                                        color: Colors.white,
                                        onPressed: () {
                                          setState(() {
                                            print("hello");
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                      "dolores et ea stet \n kasd bd\n sanctus dolor sit\n lorem ipsum\n conseteur sed"),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.yellow),
                                    child: Center(
                                      child: IconButton(
                                        padding: EdgeInsets.all(5),
                                        icon:
                                            Icon(Icons.arrow_forward_outlined),
                                        color: Colors.white,
                                        onPressed: () {
                                          setState(() {
                                            print("hello");
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )))
                ],
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  child: Center(
                    child: IconButton(
                      padding: EdgeInsets.all(5),
                      icon: Icon(FontAwesomeIcons.edit),
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          print("hello");
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  child: Center(
                    child: IconButton(
                      padding: EdgeInsets.all(5),
                      icon: Icon(volumeup ? Icons.volume_up : Icons.volume_off),
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          volumeup ? volumeup = false : volumeup = true;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
