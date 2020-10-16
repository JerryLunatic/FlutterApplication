import 'dart:async';
import 'package:flutter/material.dart';
import 'appTextStrings.dart';

class TimerFunction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TimerFunction();
}

class _TimerFunction extends State<TimerFunction> {
  int sec = 00;
  bool statusReset = false;
  Timer timer;
  static const duration = Duration(seconds: 1);
  bool _isActive = false;

  void ticker() {
    if (_isActive) {
      setState(() {
        sec = sec + 01;
      });
    }
  }

  @override
  void initState() {
    Timer.periodic(duration, (Timer t) {
      ticker();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int seconds = sec % 60;
    int minutes = sec ~/ 60;
    int hours = sec ~/ (60 * 60);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 60)),
            Container(
              width: size.width * 0.8,
              height: size.height * 0.1,
              alignment: Alignment.center,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
                color: Colors.lightBlueAccent[100]
            ),
              child: Text(
                appText.timerFunction,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 40)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: size.width * 0.2,
                height: size.height * 0.2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.lightBlue[100]),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        appText.hourField,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                      Text(
                        hours.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ]),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
              Container(
                width: size.width * 0.1,
                height: size.height * 0.1,
                alignment: Alignment.center,
                child: Icon(
                  Icons.workspaces_outline,
                  color: Colors.red,
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
              Container(
                width: size.width * 0.2,
                height: size.height * 0.2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.lightBlue[100]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      appText.minField,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                    Text(
                      minutes.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
              Container(
                width: size.width * 0.1,
                height: size.height * 0.1,
                alignment: Alignment.center,
                child: Icon(
                  Icons.workspaces_outline,
                  color: Colors.red,
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
              Container(
                width: size.width * 0.2,
                height: size.height * 0.2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.lightBlue[100],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      appText.secField,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                    Text(
                      seconds.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            Padding(padding: EdgeInsets.symmetric(vertical: 12)),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: FlatButton(
                        color: Colors.indigoAccent,
                        onPressed: () {
                          setState(() {
                            _isActive = !_isActive;
                          });
                        },
                        child: Text(
                          !_isActive ? appText.btntimr1 : appText.btntimr2,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 12)),
                  Container(
                    width: size.width * 0.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: FlatButton(
                        color: Colors.indigoAccent,
                        onPressed: () {
                          setState(() {
                            sec = 0;
                            _isActive = false;
                          });
                        },
                        child: Text(
                          appText.btntimr4,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
