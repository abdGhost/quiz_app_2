import 'package:flutter/material.dart';

class QuestionsSummaryScreen extends StatelessWidget {
  const QuestionsSummaryScreen(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(height: 5),
                  Text(data['user_chosen'] as String),
                  Text(data['correct_answer'] as String),
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
