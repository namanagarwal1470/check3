import "package:flutter/material.dart";
import 'dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class logoutpage extends StatefulWidget {
  final int phone;
  logoutpage(this.phone);

  @override
  _logoutpageState createState() => _logoutpageState();
}

class _logoutpageState extends State<logoutpage> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController name = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController examname= TextEditingController();
  TextEditingController schoolname = TextEditingController();
  TextEditingController classes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          child: Container(
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Basic Details",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              )),
          height: 200,
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 100),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.grey)),
          width: 280,
          height: 40,
          margin: EdgeInsets.only(right: 50, left: 50),
          child: Row(
            children: [
              SizedBox(width: 20),
              Text(
                "",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(width: 15),
              Container(
                  width: 200,
                  height: 30,
                  child: TextField(
                    controller: name,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "Name",
                      contentPadding: EdgeInsets.only(bottom: 17),
                      border: InputBorder.none,
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 25),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.grey)),
          width: 280,
          height: 40,
          margin: EdgeInsets.only(right: 50, left: 50),
          child: Row(
            children: [
              SizedBox(width: 20),
              Text(
                "",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(width: 15),
              Container(
                  width: 200,
                  height: 30,
                  child: TextField(
                    controller: dob,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "Date of Birth",
                      contentPadding: EdgeInsets.only(bottom: 17),
                      border: InputBorder.none,
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 25),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.grey)),
          width: 280,
          height: 40,
          margin: EdgeInsets.only(right: 50, left: 50),
          child: Row(
            children: [
              SizedBox(width: 20),
              Text(
                "",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(width: 15),
              Container(
                  width: 200,
                  height: 30,
                  child: TextField(
                    controller: email,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "Email",
                      contentPadding: EdgeInsets.only(bottom: 17),
                      border: InputBorder.none,
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 25),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.grey)),
          width: 280,
          height: 40,
          margin: EdgeInsets.only(right: 50, left: 50),
          child: Row(
            children: [
              SizedBox(width: 20),
              Text(
                "",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(width: 15),
              Container(
                  width: 200,
                  height: 30,
                  child: TextField(
                    controller: examname,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "Exam Name",
                      contentPadding: EdgeInsets.only(bottom: 17),
                      border: InputBorder.none,
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 25),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.grey)),
          width: 280,
          height: 40,
          margin: EdgeInsets.only(right: 50, left: 50),
          child: Row(
            children: [
              SizedBox(width: 20),
              Text(
                "",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(width: 15),
              Container(
                  width: 200,
                  height: 30,
                  child: TextField(
                    controller: schoolname,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "School Name",
                      contentPadding: EdgeInsets.only(bottom: 17),
                      border: InputBorder.none,
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 25),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.grey)),
          width: 280,
          height: 40,
          margin: EdgeInsets.only(right: 50, left: 50),
          child: Row(
            children: [
              SizedBox(width: 20),
              Text(
                "",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(width: 15),
              Container(
                  width: 200,
                  height: 30,
                  child: TextField(
                    controller: classes,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "Class",
                      contentPadding: EdgeInsets.only(bottom: 17),
                      border: InputBorder.none,
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 105),
        GestureDetector(
          onTap: () {
            CollectionReference users = FirebaseFirestore.instance.collection('mobileno');
            users
                .add({
              'mobile': "${widget.phone}",
              'name':name.text,
              'dob':dob.text,
              'email':email.text,
              'examname':examname.text,
              'schoolname':schoolname.text,
              'class':classes.text,

            });
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => dashboard(name.text)));
          },
          child: Container(
            child: Center(
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.yellow),
            width: 280,
            height: 40,
            margin: EdgeInsets.only(right: 50, left: 50, bottom: 100),
          ),
        ),
      ],
    ));
  }
}
