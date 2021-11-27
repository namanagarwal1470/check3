import 'package:check1/models/MathQuestion.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices{
  Future<List<MathQuestion>> fetch_data()async{
    CollectionReference math_questions = await FirebaseFirestore.instance.collection('Mathematics');
    CollectionReference passage_questions = await FirebaseFirestore.instance.collection('Passage based Questions');
   List<DocumentSnapshot>  math_docs = (await math_questions.get()).docs;
   List<DocumentSnapshot>  passage_docs = (await passage_questions.get()).docs;

   print(math_docs.length);
    print(passage_docs.length);

    return assemble_data(math_docs, passage_docs);
  }
  List<MathQuestion> assemble_data(List<DocumentSnapshot> math_docs,List<DocumentSnapshot> passage_docs){
    List<MathQuestion> questions=[];
  try{
    questions=math_docs.map((e) => MathQuestion.fromMap(e.data(),passage_docs)).toList();
  }catch(e){
    print(e.toString());
  }
    return questions;
  }
}