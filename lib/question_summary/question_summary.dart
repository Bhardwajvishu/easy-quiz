import 'package:easy_quiz/question_summary/summary_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}


// return Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(((data['index'] as int) + 1).toString()),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(data['question'] as String),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(data['chosen_answer'] as String),
//                         Text(data['correct_answer'] as String),
//                       ],
//                     ),
//                   ),
//                 ],
//               );