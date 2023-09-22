class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
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
      Answer(" Ele esquenta", false),
      Answer("Ele fica inerte", false),
      Answer("Ele emite luz", true),
      Answer("Ele se desintegra", false),
    ],
  ));

  return list;
}
