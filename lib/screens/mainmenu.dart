import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impekable/env.dart';
import 'package:impekable/models/order.dart';

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
                            child: Text('Hi Sandul', style: TextStyle(fontSize: displayWidth(context)*35.0, color: Colors.black, fontWeight: FontWeight.w500),)),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: displayWidth(context)*8.0),
                          child: FlatButton(
                            child: Text('Past Orders', style: TextStyle(fontSize: displayWidth(context)*20.0, color: Colors.black),),
                            onPressed: (){},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: displayWidth(context)*8.0),
                          child: FlatButton(
                            child: Text('Loyalty Points', style: TextStyle(fontSize: displayWidth(context)*20.0, color: Colors.black),),
                            onPressed: (){},
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
                      onPressed: (){},
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
                                          padding: EdgeInsets.only(left: displayWidth(context)*22.0),
                                          child: FlatButton(
                                            padding: EdgeInsets.zero,
                                            child: Stack(
                                              overflow: Overflow.visible,
                                              children: <Widget>[
                                                Container(
                                                  margin:EdgeInsets.symmetric(horizontal:displayWidth(context)*10.0,vertical: displayWidth(context)*15.0),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(displayWidth(context)*24.0),
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: displayWidth(context)*20.0,
                                                        color: Colors.black.withOpacity(0.2),
                                                        spreadRadius: displayWidth(context)*7.0
                                                      )
                                                    ]
                                                  ),
                                                  child: Container(
                                                    margin: EdgeInsets.only(top:displayHeight(context)*100.0,left: displayWidth(context)*12.0,right: displayWidth(context)*12.0,bottom: displayHeight(context)*12.0),
                                                    child: Column(
                                                      children: <Widget>[
                                                        Text(
                                                          e.name,
                                                          style: TextStyle(
                                                            fontFamily: 'Roboto',
                                                            fontSize: 16,
                                                            color: const Color(0xff365eff),
                                                            fontWeight: FontWeight.w600
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Text(
                                                          e.desc.substring(0,e.desc.length < 49 ? e.desc.length : 49),
                                                          style: TextStyle(
                                                            fontFamily: 'Montserrat-Regular',
                                                            fontSize: 11,
                                                            color: const Color(0xff656565),
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                        Align(
                                                          child: Text(
                                                            'Rs. ${e.price}.00',
                                                            style: TextStyle(
                                                              fontFamily: 'Montserrat-SemiBold',
                                                              fontSize: 14,
                                                              color: const Color(0xff656565),
                                                              fontWeight: FontWeight.w600
                                                            ),
                                                          ),
                                                          alignment: Alignment.centerRight,
                                                        )
                                                      ],
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                    ),
                                                  ),
                                                  height: displayHeight(context)*195.0,
                                                  width: displayWidth(context)*170.0,
                                                ),
                                                Positioned(
                                                  top:0.0,
                                                  child: Container(
                                                    width: displayWidth(context)*100,
                                                    height: displayWidth(context)*100,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image: NetworkImage(e.image),
                                                        fit: BoxFit.cover,
                                                      )
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            onPressed: () async {
                                              await showDialog(
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return AlertDialog(
                                                      content: ItemDialog(itemId: e.id,),
                                                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(displayWidth(context)*15.0)
                                                      ),
                                                    );
                                                  }
                                              );
                                              setState(() {});
                                            },
                                          ),
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

// ignore: must_be_immutable
class ItemDialog extends StatefulWidget{
  int itemId;

  ItemDialog({this.itemId});

  @override
  _ItemDialogState createState() => _ItemDialogState();
}

class _ItemDialogState extends State<ItemDialog> {
  List<AddOn> addon = [
    AddOn(addon:'CocaCola', price: 100),
    AddOn(addon:'Sprite', price: 100),
    AddOn(addon:'Chicken', price: 200),
    AddOn(addon:'Chicken Double Layer', price: 350),
    AddOn(addon:'Cheese', price: 100),
    AddOn(addon:'Double Cheese', price: 150),
  ];
  List<String> variances = ['Small','Medium','Large'];
  String variance;
  int quantity = 1;
  int itemPrice = 300;
  Map<String,bool> selectedAddons = {};
  final noteController = TextEditingController();
  RegExp reg = new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
  Function mathFunc = (Match match) => '${match[1]},';

  @override
  void initState(){
    super.initState();
    for(int i=0;i<addon.length;i++){
      selectedAddons[addon[i].addon] = false;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        width:displayWidth(context)*585.0,
        height: displayHeight(context)*684.0,
        child:Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Chicken Hamburger',style: TextStyle(color: Colors.black, fontSize: displayWidth(context)*30.0),),
                IconButton(
                  icon: Icon(Icons.close, size: displayWidth(context)*25.0,),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Fresh Hamburger with Chicken salad, tomatoes and onions', style: TextStyle(color: Color.fromRGBO(136, 136, 136, 1)),),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical:displayHeight(context)*10.0),
              width: displayWidth(context)*310,
              height: displayHeight(context)*210.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(displayWidth(context)*10.0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: displayWidth(context)*20.0,
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: displayWidth(context)*7.0
                    )
                  ],
                  image: DecorationImage(image: NetworkImage('https://1.bp.blogspot.com/-FyrYrWjuv3s/VcowtRXq-PI/AAAAAAAAOSQ/cTA1czpSgBI/s1600/Buffalo%2BChicken%2BBurger%2BSquare%2B2.JPG'), fit: BoxFit.cover,)
              ),
            ),
            if(variances.length>0)
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Variances', style: TextStyle(color: Colors.black, fontSize: displayWidth(context)*22.0),),
                    ],
                  ),
                  Container(
                    width: displayWidth(context)*585.0,
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          for(int i=0;i<variances.length;i++)
                            Container(
                              width: displayWidth(context)*190.0,
                              child: Row(
                                children: <Widget>[
                                  Radio(
                                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    value: variances[i],
                                    groupValue: variance,
                                    activeColor: Color.fromRGBO(30, 186, 66, 1),
                                    onChanged: (String value){
                                      setState(() {
                                        variance = value;
                                        print(variance);
                                      });
                                    },
                                  ),
                                  Text(variances[i],style: TextStyle(fontSize: displayWidth(context)*18.0),),
                                ],
                              ),
                            )
                        ],
                      ),
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            if(addon.length>0)
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Add-ons', style: TextStyle(color: Colors.black, fontSize: displayWidth(context)*22.0),),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    width: displayWidth(context)*585.0,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          for(int i=0;i<(addon.length%3==0?addon.length/3:(addon.length~/3)+1);i++)
                            Row(
                              children: <Widget>[
                                for(int j=0;j<3;j++)
                                  Container(
                                    width: displayWidth(context)*190.0,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.symmetric(horizontal:10.0,vertical: 0.0),
                                          width:24.0,
                                          height: 24.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(3.0),
                                            border: Border.all(color: Color.fromRGBO(112, 112, 112, 1)),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: displayWidth(context)*7.0,
                                                  color: Colors.black.withOpacity(0.1),
                                                  spreadRadius: displayWidth(context)*1.0
                                              )
                                            ],
                                          ),
                                          child: GestureDetector(
                                            child: selectedAddons[addon[i*3+j].addon]?Image(image: AssetImage('assets/icons/check.png')):Text(''),
                                            onTap: (){
                                              setState(() {
                                                if(selectedAddons[addon[i*3+j].addon]){
                                                  selectedAddons[addon[i*3+j].addon]=false;
                                                }else{
                                                  selectedAddons[addon[i*3+j].addon]=true;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                        Expanded(child: Text(addon[i*3+j].addon,style: TextStyle(fontSize: displayWidth(context)*18.0),)),
                                      ],
                                    ),
                                  )

                              ],
                            )
                        ],
                      ),
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            Container(
              margin:EdgeInsets.only(top:displayHeight(context)*15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Note', style: TextStyle(color: Colors.black, fontSize: displayWidth(context)*22.0),),
                  Container(
                    padding: EdgeInsets.only(left:displayWidth(context)*6.0),
                    margin:EdgeInsets.only(left:displayWidth(context)*12.0),
                    width:displayWidth(context)*450.0,
                    height: displayWidth(context)*30.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(displayWidth(context)*5.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: displayWidth(context)*10.0,
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: displayWidth(context)*1.0
                        )
                      ]
                    ),
                    child: TextField(
                      controller: noteController,
                      style: TextStyle(fontSize: displayWidth(context)*14.0),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Add a note (add sauce, no onions etc.)'
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin:EdgeInsets.only(top:displayHeight(context)*15.0),
                width:displayWidth(context)*130.0,
                height:displayHeight(context)*40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(displayWidth(context)*20.0),
                    border: Border.all(color: Color.fromRGBO(30, 186, 66, 1)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: displayWidth(context)*9.0,
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: displayWidth(context)*1.0
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.remove,color: Color.fromRGBO(30, 186, 66, 1),),
                      onPressed: (){
                        setState(() {
                          // ignore: unnecessary_statements
                          quantity>1?quantity--:quantity;
                        });
                      },
                    ),
                    Text(quantity.toString(),style: TextStyle(fontSize: 25.0,color:Color.fromRGBO(30, 186, 66, 1)),),
                    IconButton(
                      icon: Icon(Icons.add,color: Color.fromRGBO(30, 186, 66, 1),),
                      onPressed: (){
                        setState(() {
                          quantity++;
                        });
                      },
                    ),
                  ],
                ),
              )
            ),
            Center(
              child:Container(
                margin: EdgeInsets.only(top:displayHeight(context)*10.0),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 186, 66, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(displayHeight(context)*30.0),
                  ),
                  child: Container(
                    width: displayWidth(context)*520.0,
                    height: displayHeight(context)*45.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Rs. '+ price().toString().replaceAllMapped(reg, mathFunc)+'.00',style: TextStyle(fontSize: displayWidth(context)*25.0, color: Colors.white, fontWeight: FontWeight.w400),),
                        Text('Add $quantity to Cart',style: TextStyle(fontSize: displayWidth(context)*25.0, color: Colors.white, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  onPressed: (){
                    OrderItem item = new OrderItem();
                    item.itemId = widget.itemId;
                    item.price = price();
                    item.quantity = quantity;
                    item.note = noteController.text;
                    item.variance = variance;
                    selectedAddons.forEach((key, value) {
                      if(value==true){
                        item.selectedAddons.add(addon.firstWhere((element) => element.addon==key));
                      }
                    });

                    OrderItem currentItem = Order.order.items.firstWhere((element) => element.itemId==widget.itemId, orElse: () => null);
                    if(currentItem!=null){
                      Order.order.items.remove(currentItem);
                    }
                    Order.order.items.add(item);
                    Navigator.of(context).pop();
                  },
                ),
              )
            )
          ],
        )
    );
  }

  int price(){
    int price;
    price = itemPrice*quantity;
    selectedAddons.forEach((key, value) {
      if(value==true)
        price+=addon.firstWhere((element) => key==element.addon).price;
    });
    return price;
  }
}