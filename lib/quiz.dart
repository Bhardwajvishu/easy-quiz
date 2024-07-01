import 'package:easy_quiz/data/question.dart';
import 'package:easy_quiz/question_screen.dart';
import 'package:easy_quiz/result_screen.dart';
import 'package:easy_quiz/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void addAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenSel = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenSel = QuestionScreen(
        onSelectAnswer: addAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenSel = ResultScreen(
        chosenAnswer: selectedAnswer,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 107, 149, 239),
                Color.fromARGB(255, 64, 99, 205),
              ],
            ),
          ),
          child: screenSel,
        ),
      ),
    );
  }
}



 // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
