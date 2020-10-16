import 'package:flutter/material.dart';
import 'appTextStrings.dart';
import 'navigationclass.dart';
import 'package:fluttertoast/fluttertoast.dart';

class registerUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _registerUser();
}

class _registerUser extends State<registerUser> {
  String typedEmailAddress;
  String typedPassword;
  String typedRePassword;
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();
  TextEditingController _controllerRePass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _controllerEmail.addListener(() {
      typedEmailAddress = _controllerEmail.text;
    });
    _controllerPass.addListener(() {
      typedPassword = _controllerPass.text;
    });
    _controllerRePass.addListener(() {
      typedRePassword = _controllerRePass.text;
    });
    bool checkerPass = typedPassword == typedRePassword;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                appText.appName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 65,
                  color: Colors.white,
                  fontFamily: "Berkshire",
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 30)),
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 50,
                padding: EdgeInsets.only(left: 15, bottom: 5, right: 15),
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(22)),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    fillColor: Colors.blue,
                    hintText: appText.inputregemailtxt,
                  ),
                  controller: _controllerEmail,
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 7)),
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 50,
                padding: EdgeInsets.only(left: 15, bottom: 5, right: 15),
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(22)),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                    hintText: appText.inputrefpasstxt,
                  ),
                  obscureText: true,
                  controller: _controllerPass,
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 7)),
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 50,
                padding: EdgeInsets.only(left: 15, bottom: 5, right: 15),
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(22)),
                child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      hintText: appText.inputrefpasstxt2,
                    ),
                    obscureText: true,
                    controller: _controllerRePass),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 12)),
              Container(
                width: size.width * 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      if (typedEmailAddress.isEmpty && typedPassword.isEmpty && typedRePassword.isEmpty) {
                        Fluttertoast.showToast(
                          msg: "Empty Field!!!!!",
                          backgroundColor: Colors.white30,
                          textColor: Colors.white,
                          fontSize: 18,
                          gravity: ToastGravity.BOTTOM,
                          toastLength: Toast.LENGTH_LONG,);

                      }else if(!checkerPass){
                        Fluttertoast.showToast(
                          msg: "Credentials didn't match",
                          backgroundColor: Colors.white30,
                          textColor: Colors.white,
                          fontSize: 18,
                          gravity: ToastGravity.BOTTOM,
                          toastLength: Toast.LENGTH_LONG,);
                      } else {
                            MyNavigator.goToMainPage(context);
                      }
                    },
                    child: Text(
                      appText.btnlregtxt,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
