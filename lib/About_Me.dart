import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

const URL = "https://www.facebook.com/hastaa.xat";
const URL1 = "https://www.instagram.com/rwaandzi/";
const URL2 = "https://twitter.com/chomsky010";

class _AboutMeState extends State<AboutMe> {
  Future launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      print("Can't Launch ${url}");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: <Color>[
                  Color(0xff0D47A1),
                  Color(0xff4A148C),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
            child: Container(
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                Color(0xff0D47A1),
                Color(0xff4A148C),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/mustafa.jpg'),
              ),
              Text(
                'Mustafa Khalid',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.blue[100],
                  fontSize: 20.0,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 170.0,
                child: Divider(
                  color: Colors.blue.shade100,
                ),
              ),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      '+964 750 395 9684',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'Mustafakhalid636@gmail.com',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue[700],
                          fontFamily: 'Source Sans Pro'),
                    ),
                  )),
              SizedBox(height: 190.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 FlatButton(
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    onPressed: () {
                      launchURL(URL);
                    },
                  ),
                  FlatButton(
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    onPressed: () {
                      launchURL(URL1);
                    },
                  ),
                  FlatButton(
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    onPressed: () {
                      launchURL(URL2);
                    },
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
