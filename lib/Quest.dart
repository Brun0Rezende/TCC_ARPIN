import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
import 'UserProfile.dart';
import 'QuestC.dart';
import 'question_model.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Quest(),
      ),
    ),
  );
}

class Quest extends StatefulWidget {
  const Quest({super.key});

  @override
  State<Quest> createState() => _QuestState();
}

class _QuestState extends State<Quest> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  bool correct = false;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfile()));
              },
              icon: Image.asset('assets/images/user.png')),
        ],
        title: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Image.asset('assets/images/led.png')),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('assets/images/arrow.png')),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double baseWidth = 1040;
          double fem = constraints.maxWidth / baseWidth;
          double ffem = fem * 0.97;

          return Container(
            width: double.infinity,
            child: Container(
              // questionarioWqM (296:102)
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _questionWidget(fem, ffem),
                  _answerList(fem, ffem),
                  _nextButton(fem, ffem),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _questionWidget(double fem, double ffem) {
    return Column(
      children: [
        Center(
          child: Container(
            // questionarioBTd (296:116)
            margin: EdgeInsets.fromLTRB(0 * fem, 75 * fem, 0 * fem, 25 * fem),
            child: Text(
              'Questionario',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 70 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.5 * ffem / fem,
                fontStyle: FontStyle.italic,
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
        Text(
          "Questão ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: GoogleFonts.poppins(
            fontSize: 48 * ffem,
            fontWeight: FontWeight.w400,
            height: 1.5 * ffem / fem,
            color: Color(0xff000000),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 150 * fem),
          width: double.infinity,
          height: 200 * fem,
          decoration: const BoxDecoration(
            color: Color(0xffDAD1E4),
          ),
          child: Center(
            child: Text(
              questionList[currentQuestionIndex].questionText,
              style: GoogleFonts.poppins(
                fontSize: 54 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.5 * ffem / fem,
                color: Color(0xff000000),
              ),
            ),
          ),
        )
      ],
    );
  }

  _answerList(double fem, double ffem) {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e, fem, ffem, correct),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer, double fem, double ffem, bool correct) {
    bool isSelected = answer == selectedAnswer;

    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 75 * fem),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(920 * fem, 125 * fem),
            elevation: 3,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
            primary: isSelected ? Color(0xffe51f43) : Color(0xffDAD1E4),
            onPrimary: isSelected ? Colors.white : Colors.black,
          ),
          onPressed: () {
            if (answer.isCorrect) {
              alterarEstadoVariavel();
            }
            setState(() {
              selectedAnswer = answer;
            });
          },
          child: Text(
            answer.answerText,
            style: GoogleFonts.poppins(
              fontSize: 48 * ffem,
              fontWeight: FontWeight.w400,
              height: 1.5 * ffem / fem,
            ),
          ),
        ),
      ),
    );
  }

  void alterarEstadoVariavel() {
    setState(() {
      correct = true;
      print('alterarEstadoVariavel: correct=  $correct');
    });
  }

  _nextButton(double fem, double ffem) {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 150 * fem,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xffe51f43),
              onPrimary: Colors.white,
            ),
            onPressed: () {
              print('_nextButton: correct=  $correct');

              if (correct == true) {
                score++;
                correct = false;
                print('_nextButton IF: correct=  $correct');
              }
              if (isLastQuestion) {
                if (score >= questionList.length * 0.6) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuestConcluido()));
                } else {
                  showDialog(context: context, builder: (_) => _showScoreDialog());
                }
              } else {
                //next question
                setState(() {
                  selectedAnswer = null;
                  currentQuestionIndex++;
                });
              }
            },
            child: Text(
              isLastQuestion ? "Concluir" : "Proximo",
              style: GoogleFonts.poppins(
                fontSize: 40 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.5 * ffem / fem,
                color: Color(0xffffffff),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    return AlertDialog(
      title: Text(
        "Que pena",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Restart"),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}
