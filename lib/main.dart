/* import 'package:base_quiz_app/pages/clean_quiz_page/clean_quiz_page.dart';
import 'package:base_quiz_app/pages/complete_quiz_page/complete_quiz_page.dart';
import 'package:base_quiz_app/pages/home_page/home_page.dart'; */
import 'package:flutter/material.dart';

import 'screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
