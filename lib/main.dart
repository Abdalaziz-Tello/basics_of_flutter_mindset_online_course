import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.blue,
          title:FlutterLogo(
            size:200
          )
        )
        ,body: Center(
          child:FlutterLogo(
            size: 200,
          )
        ),
        floatingActionButton: FlutterLogo(
          size: 100,
        ),
        bottomNavigationBar: FlutterLogo(
          size: 120,
        ),
      ),
    ),
  );
}
