import 'package:flutter/material.dart';
import 'package:quizzzzz/quiz/quiz.dart';
import 'package:quizzzzz/welcomePage/WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: WelcomPage(),
    );
  }
}
