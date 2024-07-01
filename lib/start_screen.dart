import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/trvimg.png',
            width: 339,
            color: const Color.fromARGB(159, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Do you really know trivia?',
            // 'Do you really know chess?'
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 47, 88, 212),
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              startQuiz();
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
