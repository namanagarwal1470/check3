import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
//Categories
//SOC => SINGLE OPTION CORRECT
//MOC => MULTIPLE OPTION CORRECT
//IT => INTEGER BASED CORRECT
//PB => PASSAGE BASED
//STATEMENT => STATEMENT TYPE QUESTION

class MathQuestion {
  late String category;
  late String instruction;
  late var Questions;
  MathQuestion(
      {required this.category, required this.instruction, this.Questions});

  factory MathQuestion.fromMap(
      Map<String, dynamic> map, List<DocumentSnapshot> passage_snapshot) {
    String tp = map['category'];
    return MathQuestion(
        category: tp,
        instruction: map['instruction'],
        Questions: tp == "SOC"
            ? SOC_Question.fromMap(map['questions'])
            : tp == 'MOC'
                ? MOC_Question.fromMap(map['questions'])
                : tp == 'IT'
                    ? IT_Question.fromMap(map['questions'])
                    : tp == 'STATEMENT'
                        ? STATEMENT_Question.fromMap(map['questions'])
                        : null //PB_Question.fromMap(map,passage_snapshot)
        );
  }
}

class SOC_Question {
  late String title;
  late String image;
  late String tag;
  late String solution;
  late List<String> options;
  late int answer;
  SOC_Question(
      {required this.image,
      required this.title,
      required this.tag,
      required this.solution,
      required this.options,
      required this.answer});
  factory SOC_Question.fromMap(Map<String, dynamic> map) {
    return SOC_Question(
        title: map['title'] ?? null,
        image: map['image'] ?? null,
        tag: map['tag'] ?? null,
        solution: map['solution'] ?? null,
        options: List.castFrom(map['options']),
        answer: map['answer'] ?? null);
  }
}

class MOC_Question {
  late String title;
  late String image;
  late String tag;
  late String solution;
  late List<String> options;
  late List<int> answer;
  MOC_Question(
      {required this.image,
      required this.title,
      required this.tag,
      required this.solution,
      required this.options,
      required this.answer});
  factory MOC_Question.fromMap(Map<String, dynamic> map) {
    return MOC_Question(
        title: map['title'] ?? null,
        image: map['image'] ?? null,
        tag: map['tag'] ?? null,
        solution: map['solution'] ?? null,
        options: List.castFrom(map['options']),
        answer: List.castFrom(map['answer']));
  }
}

class PB_Question {
  late List<SOC_Question> sub_questions;
  late String tag;
  PB_Question({required this.sub_questions, required this.tag});
  factory PB_Question.fromMap(
      Map<String, dynamic> map, List<DocumentSnapshot> passage_snapshot) {
    return PB_Question(
      tag: map['tag'],
      sub_questions: (List.castFrom(map['questions']) as List<String>)
          .map((e) => SOC_Question.fromMap(passage_snapshot
              .where((element) => element.id == e)
              .toList()[0]
              .data() as Map<String, dynamic>))
          .toList(),
    );
  }
}

class STATEMENT_Question {
  late String title;
  late String image;
  late String tag;
  late String solution;
  late int answer;
  STATEMENT_Question(
      {required this.image,
      required this.title,
      required this.tag,
      required this.solution,
      required this.answer});
  factory STATEMENT_Question.fromMap(Map<String, dynamic> map) {
    return STATEMENT_Question(
        title: map['title'] ?? null,
        image: map['image'] ?? null,
        tag: map['tag'] ?? null,
        solution: map['solution'] ?? null,
        answer: map['answer'] ?? null);
  }
}

class IT_Question {
  late String title;
  late String image;
  late String tag;
  late String solution;
  late int answer;
  IT_Question(
      {required this.image,
      required this.title,
      required this.tag,
      required this.solution,
      required this.answer});
  factory IT_Question.fromMap(Map<String, dynamic> map) {
    return IT_Question(
        title: map['title'] ?? null,
        image: map['image'] ?? null,
        tag: map['tag'] ?? null,
        solution: map['solution'] ?? null,
        answer: map['answer'] ?? null);
  }
}
