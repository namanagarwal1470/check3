import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_tex/flutter_tex.dart';


FirebaseFirestore firestore = FirebaseFirestore.instance;



class GetUserName extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('Mathematics Questions');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc("04Hb7EoTbuCHbw2NFBeB").get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<
              String,
              dynamic>;
          return Scaffold(
            backgroundColor: Colors.white,
            body: TeXView(child: TeXViewColumn(children: [

              TeXViewDocument('Q1).'+ data["question_description"],
                style: TeXViewStyle(textAlign: TeXViewTextAlign.Center,contentColor: Colors.black,margin: TeXViewMargin.only(top: 100))),

              TeXViewDocument("A). "+data["options"]["option1"],
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Left,margin: TeXViewMargin.only(left:40,top:40))),
              TeXViewDocument("B). "+data["options"]["option2"],
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Left,margin: TeXViewMargin.only(left:40,top:40))),
              TeXViewDocument("C). "+data["options"]["option3"],
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Left,margin: TeXViewMargin.only(left:40,top:40))),
              TeXViewDocument("D). "+data["options"]["option4"],
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Left,margin: TeXViewMargin.only(left:40,top:40)))

            ]) ),
          );
        }
        return Center(child:CircularProgressIndicator());
      },
    );
  }
}