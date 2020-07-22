import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impekable/env.dart';
import 'package:impekable/models/order.dart';

class SignInCustomer extends StatefulWidget{
  @override
  _SignInCustomerState createState() => _SignInCustomerState();
}

class _SignInCustomerState extends State<SignInCustomer> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: displayWidthPercentage(context)*50,
                      height: displayHeightPercentage(context)*100,
                      child: Image(image: AssetImage('assets/bg.png'),fit: BoxFit.cover,height: displayHeightPercentage(context)*100,),
                    ),
                    Container(
                      width: displayWidthPercentage(context)*50,
                      height: displayHeightPercentage(context)*100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(top: displayHeight(context)*180),
                              child: Text(
                                'IMPEKABLE',
                                style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: displayWidth(context) * 21,
                                color: const Color(0xff43425d),
                                letterSpacing: 4.2,
                                fontWeight: FontWeight.w700,
                                height: 0.6190476190476191,
                                ),
                              )
                            ),
                          ),
                          Center(
                            child: Container(
                                margin: EdgeInsets.only(top: displayHeight(context)*20),
                              child: Text(
                                'Welcome back! Please login to your account.',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: displayWidth(context) * 11,
                                  color: const Color(0x804d4f5c),
                                  height: 0.7272727272727273,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Center(
                            child:Container(
                              margin: EdgeInsets.only(top: displayHeight(context)*32),
                              padding: EdgeInsets.symmetric(horizontal: displayWidth(context)*40.0),
                              child: TextField(
                                controller: nameController,
                                style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: displayWidth(context) * 15),
                                decoration: InputDecoration(
                                    labelText: 'Firstname & Lastname',
                                    floatingLabelBehavior: FloatingLabelBehavior.auto
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child:Container(
                              margin: EdgeInsets.only(top: displayHeight(context)*32),
                              padding: EdgeInsets.symmetric(horizontal: displayWidth(context)*40.0),
                              child: TextField(
                                  obscureText: true,
                                  style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: displayWidth(context) * 15),
                                  controller: mobileController,
                                  decoration: InputDecoration(
                                  labelText: 'Phone no.',
                                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                              ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(top: displayHeight(context)*65),
                              width: displayWidth(context)*120,
                              height: displayHeight(context)*35,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0)
                                ),
                                child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: displayWidth(context)*11)),
                                color: Color.fromRGBO(66, 67, 93, 1),
                                onPressed: (){
                                  User.user.firstName = nameController.text.split(" ").first;
                                  User.user.lastName = nameController.text.split(" ").last;
                                  User.user.phoneNo = int.parse(mobileController.text);
                                  User.user.loggedIn = true;
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ),
                          FlatButton(
                            child: Text('Login as a guest', style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: displayWidth(context) * 15, decoration: TextDecoration.underline),),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                    )
                  ],
                )
              ]
            )
          )
        )
      )
    );
  }
}