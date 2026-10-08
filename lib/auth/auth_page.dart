import 'package:flutter/material.dart';
import 'package:intro_to_restfulapi/auth/auth_model.dart';
import 'package:intro_to_restfulapi/auth/auth_service.dart';
import 'package:intro_to_restfulapi/profile/profile_page.dart';

class AuthPage extends StatelessWidget {
  new({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 500,
              height: 600,
              color: Colors.grey.shade300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  Text("Please Enter Your Data"),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: username,
                      decoration: InputDecoration(
                        hintText: 'username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: password,
                      decoration: InputDecoration(
                        hintText: 'password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(username.text);
          print(password.text);

          AuthModel authModel = AuthModel(
            username: username.text,
            password: password.text,
          );

          logIn(authModel: authModel);

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        },
      ),
    );
  }
}
