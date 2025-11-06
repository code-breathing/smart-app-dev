class Question {
  String questionText;
  List<String> options;
  int correctAnswer;

  Question(this.questionText, this.options, this.correctAnswer);
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    for (var i = 0; i < questions.length; i++) {
      var q = questions[i];
      print('\nQ${i + 1}: ${q.questionText}');
      for (var j = 0; j < q.options.length; j++) {
        print('${j + 1}. ${q.options[j]}');
      }

      // Simulated answer
      int answer = q.correctAnswer; // (pretend user chose correctly)
      if (answer == q.correctAnswer) {
        print('✅ Correct!');
        score++;
      } else {
        print('❌ Wrong!');
      }
    }

    print('\nYour final score: $score/${questions.length}');
  }
}

void main() {
  var quiz = Quiz([
    Question('5 + 3 = ?', ['5', '8', '10'], 2),
    Question('Dart is developed by?', ['Apple', 'Google', 'Microsoft'], 2),
  ]);

  quiz.start();
}
