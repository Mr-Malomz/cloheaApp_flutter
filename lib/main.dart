import 'package:cloheaApp_flutter/src/screens/congratulation.dart';
import 'package:cloheaApp_flutter/src/screens/forgotPassword.dart';
import 'package:cloheaApp_flutter/src/screens/landing.dart';
import 'package:cloheaApp_flutter/src/screens/login.dart';
import 'package:cloheaApp_flutter/src/screens/newPassword.dart';
import 'package:cloheaApp_flutter/src/screens/register.dart';
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
        fontFamily: 'Montserrat',
      ),
      routes: {
        '/': (context) => Landing(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/forgotPassword': (context) => ForgotPasswordPage(),
        '/newPassword': (context) => NewPasswordPage(),
        '/congratulation': (context) => CongratulationPage(),
      },
    );
  }
}
