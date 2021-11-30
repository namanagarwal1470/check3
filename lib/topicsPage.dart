import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:demo/model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:http/http.dart' as http;

class TopicsPage extends StatefulWidget {
  @override
  State<TopicsPage> createState() => _TopicsPageState();
}

class _TopicsPageState extends State<TopicsPage> {
  final store = FirebaseFirestore.instance;

  // Future<List<SOC_Question>> fetchData() async {
  //   CollectionReference jee_math = store.collection('topics');

  //   List<QueryDocumentSnapshot> jee_math_docs = (await jee_math.get()).docs;

  //   List<SOC_Question> data = [];
  //   try {
  //     var myData;
  //     final datai = [];
  //     for (var item in jee_math_docs) {
  //       myData = item.data() as Map<String, dynamic>;
  //       var t = myData['category'];
  //       if (t == "SOC") {
  //         datai.add(myData);
  //       }
  //     }
  //     data = datai.map((e) => SOC_Question.fromMap(e.data())).toList();
  //   } catch (e) {
  //     print(e.toString());
  //   }
  //   print(data.length);
  //   return data;
  // }

  // late Future<List<SOC_Question>> daa;
  // @override
  // void initState() {
  //   daa = fetchData();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // fetchData();
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: store.collection('topics').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final items = snapshot.data!.docs;
              final list = [];
              for (var item in items) {
                list.add(item.data());
              }

              return ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      color: Colors.blue,
                      child: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => Container(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: FutureBuilder(
                                      future: null,
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData) {
                                          return Card(
                                            child: Text(list[index]['topic']),
                                          );
                                        }

                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      })),
                            );
                          },
                          child: Text(
                            list[index]['topic'],
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          )),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  );
                },
                itemCount: list.length,
              );
            }
            return Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }),
    );
  }
}
