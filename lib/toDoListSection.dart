import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appTextStrings.dart';
import 'package:fluttertoast/fluttertoast.dart';

class toDoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _toDoList();
}

class _toDoList extends State<toDoList> {
  List<String> todayTasks = [
    "Workout",
    "Pick Up Groceries",
    "Office Task",
    "Bowling Game",
    "Night Party"
  ];
  TextEditingController _controller = TextEditingController();
  String item;
  bool _isEmpty = true;
  var inputByUser;
  var text;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      inputByUser = _controller.text;
    });
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 45)),
            Container(
              height: size.height * 0.07,
              width: size.width * 0.5,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue[400],
              ),
              child: Text(
                "To-Do-List",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
              height: size.height * 0.47,
              width: size.width * 0.85,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue[100],
              ),
              child: ListView.builder(
                  itemCount: todayTasks == null ? 0 : todayTasks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.blue[400],
                      margin: EdgeInsets.only(
                          left: 20, right: 20, top: 2, bottom: 2),
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              todayTasks[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Container(
              height: size.height * 0.07,
              width: size.width * 0.7,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white70),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.blue,
                  hintText: "Type Text Here",
                ),
                controller: _controller,
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.3,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.indigoAccent),
                  child: FlatButton(
                    child: Text(
                      appText.btnlist,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    onPressed: () {
                      setState(() {
                        if (inputByUser == null && !_isEmpty) {
                          Fluttertoast.showToast(
                            msg: "Can't Add Empty Values",
                            backgroundColor: Colors.white30,
                            textColor: Colors.white,
                            fontSize: 18,
                            gravity: ToastGravity.BOTTOM,
                            toastLength: Toast.LENGTH_SHORT,
                          );
                        } else {
                          todayTasks.add(inputByUser);
                          print(inputByUser);
                        }
                      });
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Container(
                    height: size.height * 0.07,
                    width: size.width * 0.3,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.indigoAccent),
                    child: FlatButton(
                      child: Text(
                        appText.btnlist1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      onPressed: () {
                        setState(() {
                          todayTasks.removeLast();
                        });
                      },
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
