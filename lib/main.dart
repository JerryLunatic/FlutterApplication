import 'package:flutter/material.dart';
import 'package:workoholic_flutter/loginscreen.dart';
import 'package:workoholic_flutter/register.dart';
import 'package:workoholic_flutter/welcomeScreen.dart';
import 'mainHomePage.dart';
import 'timerFunc.dart';
import 'profileSection.dart';
import 'toDoListSection.dart';

void main() {
  runApp(JerryApp());
}

class JerryApp extends StatefulWidget {
  @override
  _jerryApp createState() => _jerryApp();
}

var routes = <String, WidgetBuilder>{
  '/home': (context) => mainHomePage(),
  '/timerfc': (context) => TimerFunction(),
  '/register': (context) => registerUser(),
  '/login': (context) => loginUser(),
  '/profile': (context) => profileSection(),
  '/toDoList': (context) => toDoList(),
};

// ignore: camel_case_types
class _jerryApp extends State<JerryApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: welcomeScreen(),
        routes: routes);
  }
}
