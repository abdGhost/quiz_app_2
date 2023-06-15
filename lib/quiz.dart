import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = HomeScreen(switchScreen);
  //   super.initState();
  // }
  //  void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
  List<String> selectedAsnwer = [];
  var activeScreen = 'start-screen';

  void chooseAsnwer(String answer) {
    selectedAsnwer.add(answer);
    if (selectedAsnwer.length == questions.length) {
      setState(() {
        // selectedAsnwer = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    //Using terinary operator
    // final screenWidget = activeScreen == 'start-screen'
    //     ? HomeScreen(switchScreen)
    //     : const QuestionsScreen();

    //Using If condition
    Widget screenWidget = HomeScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onAnswerSelected: chooseAsnwer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        choosenAnswers: selectedAsnwer,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 91, 1, 129),
                Color.fromARGB(255, 53, 1, 76),
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
