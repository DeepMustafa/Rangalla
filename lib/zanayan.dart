import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Profissor.dart';

class Zanyari extends StatefulWidget {
  @override
  _ZanyariState createState() => _ZanyariState();
}

class _ZanyariState extends State<Zanyari> {
  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (myInformation.isFinished() == true) {
        Alert(
          context: context,
          title: '!کۆتایی هات',
          desc: 'تۆ گەیشتیتە کۆتایی تاقیکردنەوەکە',
        ).show();
        myInformation.reset();
      }
    });
  }

  Informations myInformation = new Informations();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color(0xffEC407A),
                Color(0xff42A5F5),
              ],
            ),
          ),
        ),
        title: Center(
          child: Text(
            textAlign: TextAlign.center,
            'کەسایەتیەکان     ',
            style: TextStyle(
              fontSize: 38.0,
              fontFamily: 'SpedaBold',
            ),
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
                padding: EdgeInsets.all(25.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Text(
                      myInformation.getInformationText(),
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
                                myInformation.previousInformation();
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            textColor: Colors.black,
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    (Color(0xffff6793)),
                                    (Color(0xEEEFC0CB))
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
                                myInformation.nextInformation();
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            textColor: Colors.black,
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    (Color(0xFFafeeee)),
                                    (Color(0xff64B6FF))
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
