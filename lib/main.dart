import 'package:flutter/material.dart';
import 'package:intro_to_restfulapi/auth/auth_page.dart';
import 'package:intro_to_restfulapi/home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthPage(),
    );
  }
}