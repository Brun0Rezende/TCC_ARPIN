import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  Future <void> getQuestionarioData(Map<String, dynamic> tutorialData, String quizId)async{
    await FirebaseFirestore.instance
    .collection("questionarios")
    .doc("led")
    .collection("perguntas")
    .get();
  }

  Stream<QuerySnapshot<Map<String,dynamic>>> getQuestionarios(){
    return FirebaseFirestore.instance
    .collection("questionarios")
    .snapshots();
  }

}