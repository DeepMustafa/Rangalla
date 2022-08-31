import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Tech.dart';

class Technology extends StatefulWidget {
  @override
  _TechnologyState createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> {
  Tech myTech = new Tech();
  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (myTech.isFinished() == true) {
        Alert(
          context: context,
          title: '!کۆتایی هات',
          desc: 'تۆ گەیشتیتە کۆتایی تاقیکردنەوەکە',
        ).show();
        myTech.reset();
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
                Color(0xff1B5E20),
                Color(0xff0D47A1),
              ],
            ),
          ),
        ),
        title: Text(
          textAlign: TextAlign.center,
          '  تەکنەلۆژیا',
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
                        myTech.getTechText(),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontFamily: 'Speda',
                        ),
                      ),
                    ),
                  )),
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
                                myTech.previousTech();
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            textColor: Colors.black,
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    (Color(0xff085a00)),
                                    (Color(0xff005357)),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
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
                                myTech.nextTech();
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            textColor: Colors.black,
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    (Color(0xff005357)),
                                    (Color(0xff374ABE)),
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
