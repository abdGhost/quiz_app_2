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
            Text(((data['questions'] as int) + 1).toString()),
          ],
        );
      }).toList(),
    );
  }
}
