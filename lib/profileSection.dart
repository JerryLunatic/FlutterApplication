import 'package:flutter/material.dart';
import 'package:workoholic_flutter/appTextStrings.dart';

class profileSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _profileSection();
}

class _profileSection extends State<profileSection> {
  String firstName = "Michael";
  String lastName = "Lawson";
  String emailId = "abc@abc.com";
  String contactNo = "123XXXXXXX";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 2)),
              Container(
                width: size.width * 0.55,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.lightBlueAccent),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 65,
                        child: Icon(
                          Icons.person,
                          color: Colors.lightBlue,
                          size: 65,
                        ),
                      ),
                    ]),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 25)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width * 0.35,
                    height: size.height * 0.1,
                    child: Text(
                      appText.profileSecName,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: size.width * 0.35,
                    height: size.height * 0.1,
                    child: Text(
                      firstName + "  " + lastName,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width * 0.35,
                    height: size.height * 0.1,
                    child: Text(
                      appText.profileEmailId,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: size.width * 0.35,
                    height: size.height * 0.1,
                    child: Text(
                      emailId,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width * 0.35,
                    height: size.height * 0.1,
                    child: Text(
                      appText.profileContactNo,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: size.width * 0.35,
                    height: size.height * 0.1,
                    child: Text(
                      contactNo,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
