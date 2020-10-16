import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workoholic_flutter/navigationclass.dart';
import 'appTextStrings.dart';

// ignore: camel_case_types
class mainHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _mainHomePage();
}

class _mainHomePage extends State<mainHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              width: size.width * 2.0,
              height: size.height * 0.3,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.lightBlueAccent[100],
              ),
              child: Text(
                appText.appName,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    color: Colors.white,
                    fontFamily: "Berkshire"),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width * 0.5,
                  height: size.height * 0.2,
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: FlatButton(
                          color: Colors.indigoAccent,
                          onPressed: () {
                            MyNavigator.goToTimerFunction(context);
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 7)),
                              Icon(
                                Icons.alarm,
                                size: 75,
                                color: Colors.white,
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                appText.timerFunction,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.5,
                  height: size.height * 0.2,
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FlatButton(
                        color: Colors.indigoAccent,
                        onPressed: () {
                          MyNavigator.goToProfilePage(context);
                        },
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 7)),
                            Icon(
                              Icons.person,
                              size: 75,
                              color: Colors.white,
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              appText.btnpersonProfile,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 18)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                width: size.width * 0.5,
                height: size.height * 0.2,
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FlatButton(
                        color: Colors.indigoAccent,
                        onPressed: () {
                          MyNavigator.goTotoDoListPage(context);
                        },
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 7)),
                            Icon(
                              Icons.list_alt,
                              size: 75,
                              color: Colors.white,
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              appText.btntodolist,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              Container(
                width: size.width * 0.5,
                height: size.height * 0.2,
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FlatButton(
                    color: Colors.indigoAccent,
                    onPressed: () {
                      MyNavigator.goToLoginPage(context);
                    },
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 7)),
                        Icon(
                          Icons.exit_to_app,
                          size: 75,
                          color: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Text(
                          appText.btnlogouttxt,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
