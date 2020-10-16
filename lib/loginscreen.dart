import 'package:flutter/material.dart';
import 'package:workoholic_flutter/appTextStrings.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'navigationclass.dart';

class loginUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _loginUser();
}

class _loginUser extends State<loginUser> {
  var emailDefault = "abc";
  var passwordDefault = "abc";
  var typedEmail;
  var typedPassword;
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _controller1.addListener((){
      typedPassword = _controller1.text;
    });
    _controller.addListener((){
      typedEmail = _controller.text;
    });
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 30)),
              Text(
                appText.appName,
                textAlign: TextAlign.center,
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
                width: size.width * 0.8,
                height: 50,
                padding: EdgeInsets.only(left: 15, bottom: 5, right: 15),
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(22)),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.indigoAccent,
                    ),
                    fillColor: Colors.blue,
                    hintText: appText.inputfieldtxt,
                  ),
                  controller: _controller,
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 7)),
              Container(
                alignment: Alignment.center,
                width: size.width * 0.8,
                height: 50,
                padding: EdgeInsets.only(left: 15, bottom: 5, right: 15),
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(22)),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.indigoAccent,
                    ),
                    hintText: appText.inputpasstxt,
                  ),
                  controller: _controller1,
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 12)),
              Container(
                width: size.width * 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: FlatButton(
                    color: Colors.indigoAccent,
                    onPressed: () {
                      if(typedEmail == emailDefault && typedPassword == passwordDefault){
                        MyNavigator.goToMainPage(context);
                      }
                      else{
                        Fluttertoast.showToast(msg: "Invalid Credentails",
                        backgroundColor: Colors.white30,
                        textColor: Colors.white,
                        fontSize: 18,
                        gravity: ToastGravity.BOTTOM,
                        toastLength: Toast.LENGTH_SHORT,);
                      }
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
            ],
          ),
        ),
      ),
    );
  }
}
