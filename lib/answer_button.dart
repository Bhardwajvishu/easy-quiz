import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answerString,
    required this.onTap,
    super.key,
  });

  final String answerString;
  final Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 47, 88, 212),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          )),
      child: Text(
        answerString,
        textAlign: TextAlign.center,
      ),
    );
  }
}
