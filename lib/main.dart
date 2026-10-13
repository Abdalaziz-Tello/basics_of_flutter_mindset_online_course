import 'package:di_storage/ui/home_page.dart';
import 'package:di_storage/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// bool firstOpen = true;
// ? Declartion
late SharedPreferences prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ? inilization
  prefs = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  new({super.key});

  // bool firstOpen = prefs.getBool('firstOpen') ?? false;
  bool notHasToken = checkIfHasToken(prefs);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ? in-line if
      home: notHasToken ? LoginPage() : HomePage(),
    );
  }
}

bool checkIfHasToken(SharedPreferences object) {
  if (object.getString("token") == null) {
    return true;
  } else {
    return false;
  }
}
