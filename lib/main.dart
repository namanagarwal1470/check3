import 'package:check1/fetchdata.dart';
import 'package:check1/models/MathQuestion.dart';
import 'package:check1/services/firestore_services.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_tex/flutter_tex.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TESTPage(),
    );
  }
}
class TESTPage extends StatefulWidget {
  const TESTPage({Key? key}) : super(key: key);

  @override
  _TESTPageState createState() => _TESTPageState();
}

class _TESTPageState extends State<TESTPage> {
  bool loading =true;
  List<MathQuestion> question_set=[];
  @override
  void initState() {
    fetch_questions();
     super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(5, (index) =>question_set[index].category=="SOC"?MCQ_Container(question_set[index].Questions):Container() ),
          ),
        ),
      )
    );
  }
  Widget MCQ_Container(SOC_Question question){
    return TeXView(
        child: TeXViewColumn(children: [
      TeXViewDocument('Q. '+question.title,
          style: TeXViewStyle(contentColor: Colors.black,margin: TeXViewMargin.only(top: 20))),
      TeXViewColumn(
        children: List.generate(question.options.length, (index) => TeXViewDocument('${index+1}.'+ question.options[index],
            style: TeXViewStyle(contentColor: Colors.black,margin: TeXViewMargin.only(top: 5))),
        ),
      )

    ]) );
  }
  void fetch_questions()async{
    List<MathQuestion> questions = await FirestoreServices().fetch_data();
    setState(() {
      question_set=questions;
    });
  }
}



