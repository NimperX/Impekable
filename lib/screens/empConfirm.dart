import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impekable/env.dart';
import 'package:impekable/models/order.dart';

class EmpConfirm extends StatefulWidget {
  @override
  _EmpConfirmState createState() => _EmpConfirmState();
}

class _EmpConfirmState extends State<EmpConfirm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context)*540,
      height: displayHeight(context)*250,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

            ],
          ),
          Positioned(
            top: 10.0,
            right: 20.0,
            child: FlatButton(
              child: Text('Cancel', style: TextStyle(fontSize: 28.0, color: Color.fromRGBO(77, 79, 92, 1)),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Positioned(
            bottom: 15.0,
            right: 20.0,
            child: RaisedButton(
              color: Color.fromRGBO(30, 186, 66, 1),
              child: Container(
                width: displayWidth(context)*100.0,
                height: displayHeight(context)*30.0,
                child: Text('Go', style: TextStyle(fontSize: displayWidth(context)*22.0, color:Colors.white))
              ),
              onPressed: () {
                Order.order.orderConfirmed = true;
                Navigator.popUntil(context, ModalRoute.withName('/signin'));
              }
            ),
          )
        ],
      ),
    );
  }
}