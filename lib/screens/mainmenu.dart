import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impekable/env.dart';
import 'package:impekable/models/order.dart';
import 'package:impekable/screens/cart.dart';
import 'package:impekable/screens/itemdialog.dart';

class MainMenu extends StatefulWidget{
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  List<String> tabs = ['Top Picks','Burgers','Submarines','Wraps','Salads','Snacks'];
  List<Item> items = [
    Item(id:1,name: 'Chicken Hamburger1',desc: 'Fresh hamburger with chicken, salad, tomatoes. Sample', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Top Picks'),
    Item(id:2,name: 'Chicken Hamburger2',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Top Picks'),
    Item(id:3,name: 'Chicken Hamburger3',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Top Picks'),
    Item(id:4,name: 'Chicken Hamburger4',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Top Picks'),
    Item(id:5,name: 'Chicken Hamburger4',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Top Picks'),
    Item(id:6,name: 'Chicken Hamburger4',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Top Picks'),
    Item(id:7,name: 'Chicken Hamburger4',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Top Picks'),
    Item(id:8,name: 'Chicken Hamburger4',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Top Picks'),
    Item(id:9,name: 'Chicken Hamburger4',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Top Picks'),
    Item(id:10,name: 'Chicken Hamburger5',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Burgers'),
    Item(id:11,name: 'Chicken Hamburger6',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Burgers'),
    Item(id:12,name: 'Chicken Hamburger7',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Burgers'),
    Item(id:13,name: 'Chicken Hamburger8',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Wraps'),
    Item(id:14,name: 'Chicken Hamburger9',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Burgers'),
    Item(id:15,name: 'Chicken Hamburger10',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Submarines'),
    Item(id:16,name: 'Chicken Hamburger11',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Snacks'),
    Item(id:17,name: 'Chicken Hamburger12',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Salads'),
    Item(id:18,name: 'Chicken Hamburger13',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Snacks'),
    Item(id:19,name: 'Chicken Hamburger14',desc: 'Testing description', image: 'https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG', price: 300,category: 'Snacks'),
  ];

  int currTab=0;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        currTab=(_scrollController.offset)~/(displayHeight(context)*290.0);
        setState(() {});
      });
  }


  @override
  void dispose() {
    _scrollController.dispose(); // it is a good practice to dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: displayWidth(context)*36, left: displayWidth(context)*36, right: displayWidth(context)*36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(right: displayWidth(context)*30.0),
                            child: Text(User.user.loggedIn ? 'Hi ${User.user.firstName}' : 'Hi folk', style: TextStyle(fontSize: displayWidth(context)*35.0, color: Colors.black, fontWeight: FontWeight.w500),)),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: displayWidth(context)*8.0),
                          child: FlatButton(
                            child: Text('Past Orders', style: TextStyle(fontSize: displayWidth(context)*20.0, color: Colors.black),),
                            onPressed: (){
                              if(User.user.loggedIn) {
                                //do nothing yet
                              }else{
                                Navigator.pushNamed(context, '/signincustomer');
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: displayWidth(context)*8.0),
                          child: FlatButton(
                            child: Text('Loyalty Points', style: TextStyle(fontSize: displayWidth(context)*20.0, color: Colors.black),),
                            onPressed: () {
                              if(User.user.loggedIn) {
                                //do nothing yet
                              }else{
                                Navigator.pushNamed(context, '/signincustomer');
                              }
                            }
                          ),
                        )
                      ],
                    ),
                    RaisedButton(
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
                      onPressed: () async {
                        await showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return AlertDialog(
                                content: Cart(),
                                contentPadding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 10.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(displayWidth(context)*15.0)
                                ),
                              );
                            }
                        );
                        setState(() {});
                        if(Order.order.orderConfirmed) {
                          Order.order.orderConfirmed=false;
                          await showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  content: Container(
                                    width:displayWidth(context)*420,
                                    height: displayWidth(context)*150,
                                    child:Column(
                                      children: <Widget>[
                                        Center(
                                          child: Container(
                                            margin:EdgeInsets.only(top: displayHeight(context)*25),
                                            child: Text('Are you sure you want to order?',style: TextStyle(fontSize: displayWidth(context)*25.0,fontWeight: FontWeight.bold),)
                                          ),
                                        ),
                                        Center(
                                          child:Container(
                                            margin:EdgeInsets.only(top:displayHeight(context)*32),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                FlatButton(
                                                  child: Text('Check the order',style: TextStyle(fontSize: displayWidth(context)*16,decoration: TextDecoration.underline)),
                                                  onPressed: () async {
                                                    await showDialog(
                                                        context: context,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                            content: Cart(),
                                                            contentPadding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 10.0),
                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(displayWidth(context) * 15.0)
                                                            ),
                                                          );
                                                        }
                                                    );
                                                    if(Order.order.items.isEmpty){
                                                      Navigator.of(context).pop();
                                                    }
                                                  }
                                                ),
                                                RaisedButton(
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
                                                        Text(' Order', style: TextStyle(fontSize: displayWidth(context)*26.0, fontWeight: FontWeight.w400, color: Colors.white),)
                                                      ],
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                )
                                              ],
                                            ),
                                          )
                                        )
                                      ],
                                    )
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(displayWidth(context)*15.0)
                                  ),
                                );
                              }
                          );
                        }
                        setState(() {});
                      },
                    )
                  ],
                ),
              ),
              Container(
                width: displayWidthPercentage(context)*100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      for(int i=0;i<tabs.length;i++)
                        Container(
                          margin:EdgeInsets.only(left: displayWidth(context)*22.0, top: displayHeight(context)*25.0, bottom: displayHeight(context)*25.0),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(displayWidth(context)*20.0,)
                            ),
                            color: i==currTab ? Colors.black : Colors.transparent,
                            child:Container(
                              height: displayHeight(context)*40.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(tabs[i],style: TextStyle(color: i==currTab? Colors.white : Colors.black, fontSize: displayWidth(context)*22.0),),
                                ],
                              )
                            ),
                            onPressed: (){
                              setState(() {
                                _scrollController.animateTo(displayHeight(context)*290.0*i, duration: Duration(milliseconds: 500), curve: Curves.ease);
                              });
                            },
                          ),
                        )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: <Widget>[
                      for(int i=0;i<tabs.length;i++)
                        Container(
                          height: displayHeight(context)*290.0,
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: displayWidth(context)*22.0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  tabs[i],
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 35,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                width: displayWidthPercentage(context)*100,
                                margin: EdgeInsets.only(top: displayHeight(context)*15.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                      children: items
                                          .where((element) => element.category == tabs[i])
                                          .map((e){
                                        return Container(
                                          color: Color(0xdfe7e9),
                                          padding: EdgeInsets.all(displayWidth(context)*22.0),
                                            child: Container(
                                              child:Container(
                                                width:100.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(colors: [
                                                        Color.fromRGBO(0, 0, 0, 0.09),
                                                        Color.fromRGBO(0, 0, 0, 0.05)
                                                      ],
                                                      stops: [0.3,0.6],
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight
                                                    ),
                                                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                                ),
                                              ),
                                              width:100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                                boxShadow: [
                                                  BoxShadow(color: Colors.white70, blurRadius: 10.0, spreadRadius: 1.0, offset: Offset(5.0, 5.0)),
                                                  BoxShadow(color: Colors.black12, blurRadius: 10.0, spreadRadius: 1.0, offset: Offset(5.0, 5.0))
                                                ]
                                              ),
                                            )
//                                          child: FlatButton(
//                                            padding: EdgeInsets.zero,
//                                            child: Stack(
//                                              overflow: Overflow.visible,
//                                              children: <Widget>[
//                                                Container(
//                                                  margin:EdgeInsets.symmetric(horizontal:displayWidth(context)*10.0,vertical: displayWidth(context)*15.0),
//                                                  decoration: BoxDecoration(
//                                                    borderRadius: BorderRadius.circular(displayWidth(context)*24.0),
//                                                    color: Colors.white,
//                                                    boxShadow: [
//                                                      BoxShadow(
//                                                        blurRadius: displayWidth(context)*20.0,
//                                                        color: Colors.black.withOpacity(0.2),
//                                                        spreadRadius: displayWidth(context)*7.0
//                                                      )
//                                                    ]
//                                                  ),
//                                                  child: Container(
//                                                    margin: EdgeInsets.only(top:displayHeight(context)*100.0,left: displayWidth(context)*12.0,right: displayWidth(context)*12.0,bottom: displayHeight(context)*12.0),
//                                                    child: Column(
//                                                      children: <Widget>[
//                                                        Text(
//                                                          e.name,
//                                                          style: TextStyle(
//                                                            fontFamily: 'Roboto',
//                                                            fontSize: 16,
//                                                            color: const Color(0xff365eff),
//                                                            fontWeight: FontWeight.w600
//                                                          ),
//                                                          textAlign: TextAlign.left,
//                                                        ),
//                                                        Text(
//                                                          e.desc.substring(0,e.desc.length < 49 ? e.desc.length : 49),
//                                                          style: TextStyle(
//                                                            fontFamily: 'Montserrat-Regular',
//                                                            fontSize: 11,
//                                                            color: const Color(0xff656565),
//                                                          ),
//                                                          textAlign: TextAlign.left,
//                                                        ),
//                                                        Align(
//                                                          child: Text(
//                                                            'Rs. ${e.price}.00',
//                                                            style: TextStyle(
//                                                              fontFamily: 'Montserrat-SemiBold',
//                                                              fontSize: 14,
//                                                              color: const Color(0xff656565),
//                                                              fontWeight: FontWeight.w600
//                                                            ),
//                                                          ),
//                                                          alignment: Alignment.centerRight,
//                                                        )
//                                                      ],
//                                                      crossAxisAlignment: CrossAxisAlignment.start,
//                                                    ),
//                                                  ),
//                                                  height: displayHeight(context)*195.0,
//                                                  width: displayWidth(context)*170.0,
//                                                ),
//                                                Positioned(
//                                                  top:0.0,
//                                                  child: Container(
//                                                    width: displayWidth(context)*100,
//                                                    height: displayWidth(context)*100,
//                                                    decoration: BoxDecoration(
//                                                      shape: BoxShape.circle,
//                                                      image: DecorationImage(
//                                                        image: NetworkImage(e.image),
//                                                        fit: BoxFit.cover,
//                                                      )
//                                                    ),
//                                                  ),
//                                                )
//                                              ],
//                                            ),
//                                            onPressed: () async {
//                                              await showDialog(
//                                                  context: context,
//                                                  builder: (BuildContext context) {
//                                                    return AlertDialog(
//                                                      content: ItemDialog(itemId: e.id,),
//                                                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
//                                                      shape: RoundedRectangleBorder(
//                                                        borderRadius: BorderRadius.circular(displayWidth(context)*15.0)
//                                                      ),
//                                                    );
//                                                  }
//                                              );
//                                              setState(() {});
//                                            },
//                                          ),
                                        );
                                      }).toList()
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}