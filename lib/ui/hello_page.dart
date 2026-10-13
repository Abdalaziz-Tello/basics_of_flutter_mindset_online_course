import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget {
  const new({super.key});

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  Tween<double> tween = Tween(begin: 0, end: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: tween,
          duration: Duration(seconds: 3),
          builder: (context, value, child) => FlutterLogo(size: value * 300),
        ),
      ),
    );
  }
}
