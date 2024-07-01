import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 111, 224, 115)
            : const Color.fromARGB(255, 217, 106, 59),
        borderRadius: BorderRadius.circular(3000),
      ),
      child: Text(questionNumber.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            color: Color.fromARGB(255, 47, 88, 212),
          )),
    );
  }
}
