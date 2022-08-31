import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rangalla/ScreenOn.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 10), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => ScreenOn(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.yellow,
      Colors.blue,
      Colors.purple,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'SpedaBold',
    );
    return Container(
      decoration: BoxDecoration(
        image:  DecorationImage(
        image:  AssetImage("images/playstore.png"),
    fit: BoxFit.cover),
      ),
      child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 250.0,
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'ڕەنــگــاڵـــە',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                    textAlign:TextAlign.center,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}