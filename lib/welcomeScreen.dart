import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appTextStrings.dart';
import 'navigationclass.dart';

class welcomeScreen extends StatefulWidget {
  @override
  _welcomeScreen createState() => _welcomeScreen();
}

class _welcomeScreen extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent[100],
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 25)),
                          Text(
                            appText.appName,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 60,
                                color: Colors.white,
                                fontFamily: "Berkshire"),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15)),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 15)),
                          Image.asset(
                            "images/workout.png",
                            scale: 2,
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 15)),
                        ],
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 30)),
                    Container(
                      width: size.width * 0.7,
                      height: size.height * 0.1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: FlatButton(
                          color: Colors.indigo,
                          onPressed: () {
                            MyNavigator.goToLoginPage(context);
                          },
                          child: Text(
                            appText.btnlogintxt,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 7)),
                    Container(
                      width: size.width * 0.7,
                      height: size.height * 0.1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: FlatButton(
                          color: Colors.lightBlue[200],
                          onPressed: () {
                            MyNavigator.goToRegisterPage(context);
                          },
                          child: Text(
                            appText.btnlregtxt,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
