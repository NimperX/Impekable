import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impekable/env.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              width: displayWidthPercentage(context)*100,
              height: displayHeightPercentage(context)*100,
              child: Image(image: AssetImage('assets/bg.png'), fit: BoxFit.cover,)
          ),
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: displayHeight(context)*195),
                  width: displayWidth(context)*450,
                  height: displayHeight(context)*100,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0)
                    ),
                    color: Color.fromRGBO(255, 167, 38, 1),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: displayWidth(context)*10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Dine-In',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 35,
                              color: const Color(0xffffffff),
                            )
                          ),
                          Image(image: AssetImage('assets/icons/arrow.png'),)
                        ],
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/mainmenu');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: displayHeight(context)*30),
                  width: displayWidth(context)*450,
                  height: displayHeight(context)*100,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0)
                    ),
                    color: Color.fromRGBO(137, 74, 214, 1),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: displayWidth(context)*10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                              'Take-Away',
                              style: TextStyle(
                                fontFamily: 'Helvetica Neue',
                                fontSize: 35,
                                color: const Color(0xffffffff),
                              )
                          ),
                          Image(image: AssetImage('assets/icons/arrow.png'),)
                        ],
                      ),
                    ),
                    onPressed: (){},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: displayHeight(context)*30),
                  width: displayWidth(context)*450,
                  height: displayHeight(context)*100,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0)
                    ),
                    color: Color.fromRGBO(255, 73, 103, 1),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: displayWidth(context)*10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                              'Existing Orders',
                              style: TextStyle(
                                fontFamily: 'Helvetica Neue',
                                fontSize: 35,
                                color: const Color(0xffffffff),
                              )
                          ),
                          Image(image: AssetImage('assets/icons/arrow.png'),)
                        ],
                      ),
                    ),
                    onPressed: (){},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
