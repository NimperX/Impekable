import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impekable/env.dart';
import 'package:impekable/models/order.dart';
import 'package:impekable/screens/empConfirm.dart';

class Cart extends StatefulWidget{
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:displayWidth(context)*570.0,
      height: displayHeight(context)*550.0,
      child:Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: displayWidth(context)*20.0),
            height: displayHeight(context)*80.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Order List',style: TextStyle(color: Colors.black, fontSize: displayWidth(context)*30.0, fontWeight: FontWeight.w400),),
                IconButton(
                  icon: Icon(Icons.close, size: displayWidth(context)*25.0, color: Colors.black.withOpacity(0.7)),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: displayWidth(context)*20.0),
            height: displayHeight(context)*40,
            color: Color.fromRGBO(241,243,249,1),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left:displayWidth(context)*44.0),
                  child: Text('Item',style:TextStyle(fontSize: displayWidth(context)*18.0)),
                ),
                Container(
                  margin: EdgeInsets.only(left:displayWidth(context)*360.0),
                  child: Text('Quantity',style:TextStyle(fontSize: displayWidth(context)*18.0)),
                )
              ],
            ),
          ),
          Order.order.items.isEmpty ? Container(
              height: displayHeight(context)*360,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.remove_shopping_cart, size: displayWidth(context)*100.0,),
                  Text('Nothing to show', style: TextStyle(fontWeight: FontWeight.w600, fontSize: displayWidth(context)*18),)
                ],
              )
            ) : Expanded(
              child: SingleChildScrollView(
                child:Column(
                  children: <Widget>[
                    for(int i=0;i<Order.order.items.length;i++)
                      Container(
                        color: i%2==0?Colors.white:Color.fromRGBO(247, 250, 252, 1),
                        padding: EdgeInsets.symmetric(horizontal: displayWidth(context)*20.0),
                        height: displayHeight(context)*45.0,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: displayWidth(context)*435.0,
                              child: Text(Order.order.items[i].itemName,style:TextStyle(fontSize: displayWidth(context)*16.0,fontWeight: FontWeight.w300)),
                            ),
                            Container(
                              width: displayWidth(context)*70.0,
                              child: Center(child: Text(Order.order.items[i].quantity.toString(),style:TextStyle(fontSize: displayWidth(context)*16.0,fontWeight: FontWeight.w300))),
                            ),
                            Container(
                              child: GestureDetector(
                                child:Image(image: AssetImage('assets/icons/close.png'),),
                                onTap: () {
                                  setState(() {
                                    Order.order.items.remove(Order.order.items.firstWhere((element) => element.itemId==Order.order.items[i].itemId));
                                  });
                                },
                              )
                            ),
                          ],
                        ),
                      )
                  ],
                )
              ),
            ),
          Order.order.items.isEmpty ? Text('') : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding:EdgeInsets.only(left: displayWidth(context)*350,top: displayHeight(context)*20),
                child: RaisedButton(
                    color: Color.fromRGBO(30, 186, 66, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(displayWidth(context)*22.0)
                    ),
                    child: Container(
                      width: displayWidth(context)*160.0,
                      height: displayHeight(context)*45.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(image: AssetImage('assets/icons/order.png'),),
                          Text(Order.order.items.length > 0 ? ' Order(${Order.order.items.length})' : ' Order', style: TextStyle(fontSize: displayWidth(context)*26.0, fontWeight: FontWeight.w400, color: Colors.white),)
                        ],
                      ),
                    ),
                    onPressed: () async{
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: EmpConfirm(),
                              contentPadding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 10.0),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(displayWidth(context) * 15.0)
                              ),
                            );
                          }
                      );
                    }
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}