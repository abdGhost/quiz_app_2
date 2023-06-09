import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.backgroundColor, super.key});
  final List<Color> backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: backgroundColor,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Learn Flutter With Fun',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Start',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
