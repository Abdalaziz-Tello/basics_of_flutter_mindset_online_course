import 'package:di_storage/ui/login_page.dart';
import 'package:di_storage/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          prefs.clear();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
      ),
      body: Center(
        child: Text("Hello From HomePage", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
