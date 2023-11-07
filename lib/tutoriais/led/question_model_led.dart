import 'package:cloud_firestore/cloud_firestore.dart';

class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);

  Map<String, dynamic> toMap(){
    return {
      'questionText': questionText,
      'answersList': answersList.map((e) => e.toMap()).toList(),
    };
  }

  factory Question.fromMap(Map<String, dynamic> map){
    return Question(
      map['questionText'],
      List<Answer>.from(map['answersList'].map((a) => Answer.fromMap(a))
    ));
  }
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);

  Map<String, dynamic> toMap(){
    return {
      'answerText': answerText,
      'isCorrect': isCorrect,
    };
  }

  factory Answer.fromMap(Map<String, dynamic> map){
    return Answer(
      map['answerText'],
      map['isCorrect'],
    );
  }
}

class Questions{
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Question>> getQuestions(){
    return _db.collection('questions').snapshots().map((snapshot) => snapshot.docs.map((doc) => Question.fromMap(doc.data())).toList());
  } 

  Future<void> addQuestion(Question question) async {
    await _db.collection('questions').add(question.toMap());
  }

  Future<void> removeQuestion(Question question) async {
    final snapshot = await _db
        .collection('questions')
        .where('questionText', isEqualTo: question.questionText)
        .get();
    snapshot.docs.first.reference.delete();
  }

  Future<void> updateQuestion(Question oldQuestion, Question newQuestion) async {
    final snapshot = await _db
        .collection('questions')
        .where('questionText', isEqualTo: oldQuestion.questionText)
        .get();
    snapshot.docs.first.reference.update(newQuestion.toMap());
  }

  Future<void> clearQuestions() async {
    final snapshot = await _db.collection('questions').get();
    for (DocumentSnapshot doc in snapshot.docs) {
      doc.reference.delete();
    }
  }
  

}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Qual é a função principal de um LED?",
    [
      Answer("Gerar calor", false),
      Answer("Emitir luz", true),
      Answer("Produzir som", false),
      Answer("Armazenar energia", false),
    ],
  ));

  list.add(Question(
    "Qual é uma das principais vantagens dos LEDs em comparação com as lâmpadas incandescentes tradicionais?",
    [
      Answer("Maior consumo de energia", false),
      Answer("Emissão de calor", false),
      Answer("Luz amarela", false),
      Answer("Maior vida útil", true),
    ],
  ));

  list.add(Question(
    "Qual é a principal aplicação dos LEDs RGB (Red, Green, Blue) em eletrônicos e iluminação?",
    [
      Answer("Reprodução de cores", true),
      Answer("Indicação de temperatura ambiente", false),
      Answer("Produção de ruído", false),
      Answer("Resfriamento de dispositivos", false),
    ],
  ));

  list.add(Question(
    "O que acontece quando uma corrente elétrica é aplicada a um LED?",
    [
      Answer("Ele esquenta", false),
      Answer("Ele fica inerte", false),
      Answer("Ele emite luz", true),
      Answer("Ele se desintegra", false),
    ],
  ));

  return list;
}
