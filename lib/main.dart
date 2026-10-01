import 'package:base_quiz_app/pages/clean_quiz_page/clean_quiz_page.dart';
import 'package:base_quiz_app/pages/complete_quiz_page/complete_quiz_page.dart';
import 'package:base_quiz_app/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SimpleOnBoardingScreen());
  }
}

class SimpleOnBoardingScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          color: Colors.white,
          child: Center(
          child: Image.asset('assets/images/welcome_1.png'),
          ),
        ),
      ),
    );
  }
}
