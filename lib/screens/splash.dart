import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impekable/env.dart';

class SplashScreen extends StatefulWidget{

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),() => Navigator.pushReplacementNamed(context, '/signin'));
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: displayWidthPercentage(context)*100,
        height: displayHeightPercentage(context)*100,
        child: Stack(
          fit: StackFit.expand,
          children : <Widget>[
            Image(image: AssetImage('assets/bg.png'),width: 1024,height: displayHeightPercentage(context)*100,fit: BoxFit.cover,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text('IMPEKABLE',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 64,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 60.0),
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    )
                  )
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}