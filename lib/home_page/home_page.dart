import 'package:flutter/material.dart';
import 'package:intro_to_restfulapi/home_page/home_model.dart';
import 'package:intro_to_restfulapi/home_page/home_service.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Article? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: data == null
            ? CircularProgressIndicator()
            : ListTile(
              leading: CircleAvatar(child: Text(data!.id.toString()),),
                title: Text(data!.title),
                subtitle: Text(data!.body),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          data = await fetchData();
          setState(() {});
        },
      ),
    );
  }
}
