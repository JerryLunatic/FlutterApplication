import 'package:flutter/cupertino.dart';

class MyNavigator {
  static void goToMainPage(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  static void goToTimerFunction(BuildContext context) {
    Navigator.pushNamed(context, "/timerfc");
  }
  static void goToRegisterPage(BuildContext context){
    Navigator.pushNamed(context, '/register');
  }
  static void goToLoginPage(BuildContext context){
    Navigator.pushNamed(context, '/login');
  }
  static void goToProfilePage(BuildContext context){
    Navigator.pushNamed(context, '/profile');
  }
  static void goTotoDoListPage(BuildContext context){
    Navigator.pushNamed(context, '/toDoList');
  }
}
