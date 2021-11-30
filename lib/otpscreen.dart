import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'logoutpage.dart';
import 'ques.dart';
import 'dashboard.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OtpPage extends StatefulWidget {
  final int phone;
  OtpPage(this.phone);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  fetch_data() async {
    CollectionReference mobileinfo =
        await FirebaseFirestore.instance.collection('mobileno');

    List<DocumentSnapshot> mobileinfodocs = (await mobileinfo.get()).docs;

    for (var u in mobileinfodocs) {
      if (u["mobile"] == "${widget.phone}") {
        setState(() {
          m = true;
        });
      }
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String? _verificationID;
  int counter = 0;
  bool m = false;
  final TextEditingController _pinPutController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: ListView(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height) * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(50))),
              child: ListView(
                children: [
                  SizedBox(height: 130),
                  Container(
                      margin: EdgeInsets.all(20),
                      child: Center(
                        child: Text(
                          "Enter OTP",
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                      )),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
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
                              controller: _pinPutController,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 17),
                                  border: InputBorder.none,
                                  hintText: "Enter OTP"),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () async {
                      await FirebaseAuth.instance
                          .signInWithCredential(
                        PhoneAuthProvider.credential(
                            verificationId: _verificationID.toString(),
                            smsCode: _pinPutController.text),
                      )
                          .then((value) async {
                        if (value.user != null) {
                          if (m == false) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        logoutpage(widget.phone)),
                                (route) => false);
                          } else {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => dashboard("hello")),
                                (route) => false);
                          }
                        }
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow),
                      width: 280,
                      height: 40,
                      margin: EdgeInsets.only(right: 50, left: 50),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(20),
                      child: Center(
                        child: Text(
                          "Haven't recieved OTP Resend",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ));
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${widget.phone}',
        verificationCompleted: (PhoneAuthCredential authCredential) async {
          await FirebaseAuth.instance
              .signInWithCredential(authCredential)
              .then((value) async {
            if (value.user != null) {
              if (m == false) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => logoutpage(widget.phone)),
                    (route) => false);
              } else {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => dashboard("hello")),
                    (route) => false);
              }
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verID, int? forceCodeResend) {
          setState(() {
            _verificationID = verID;
          });
        },
        codeAutoRetrievalTimeout: (String verID) {
          setState(() {
            _verificationID = verID;
          });
        },
        timeout: Duration(seconds: 10));
  }

  @override
  void initState() {
    super.initState();
    fetch_data();

    _verifyPhone();
  }
}
