import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Motivaty.dart';

class Motivation extends StatefulWidget {
  @override
  _MotivationState createState() => _MotivationState();
}

class _MotivationState extends State<Motivation> {
  Motivaty myMotivate = new Motivaty();
  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (myMotivate.isFinished() == true) {
        Alert(
          context: context,
          type: AlertType.success,
          title: "RFLUTTER ALERT",
          desc: "Flutter is more awesome with RFlutter Alert.",
          buttons: [
            DialogButton(
              child: Text(
                "COOL",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            ),
          ],
        ).show();
        myMotivate.reset();
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color(0xff424242),
                Color(0xff4A148C),
              ],
            ),
          ),
        ),
        title: Text(
          textAlign: TextAlign.center,
          ' گەشەپێدان',
          style: TextStyle(
            fontSize: 38.0,
            fontFamily: 'SpedaBold',
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Text(
                      myMotivate.getMotivateText(),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontFamily: 'Speda',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                myMotivate.previousMotivate();
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            textColor: Colors.black,
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    (Color(0xff322f41)),
                                    (Color(0xff4a4a4a))
                                  ],
                                  begin: Alignment.centerRight,
                                  end: Alignment.center,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxHeight: 40.0, maxWidth: 1030.0),
                                alignment: Alignment.center,
                                child: Text(
                                  'پێشتر',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontFamily: 'Speda',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                myMotivate.nextMotivate();
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            textColor: Colors.black,
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    (Color(0xff322f41)),
                                    (Color(0xff3a0054)),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxHeight: 40.0, maxWidth: 2000.0),
                                alignment: Alignment.center,
                                child: Text(
                                  'دواتر',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontFamily: 'Speda',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
