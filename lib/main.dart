import 'package:cloheaApp_flutter/src/screens/landing.dart';
import 'package:cloheaApp_flutter/src/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CLOHEA App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => Landing(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
