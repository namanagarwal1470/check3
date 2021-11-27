
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'logoutpage.dart';
import 'loginscreen.dart';
import 'start1.dart';
import 'splashscreen.dart';
import 'dashboard.dart';
import 'start3.dart';
import 'ques.dart';
import 'topics.dart';
import 'profile.dart';
import 'hint.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash()
    );
  }
}
