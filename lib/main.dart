import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(
        backgroundColor: [
          Color.fromARGB(255, 12, 0, 58),
          Color.fromARGB(255, 18, 1, 83),
        ],
      ),
    );
  }
}
