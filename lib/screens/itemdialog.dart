import 'package:flutter/material.dart';
import 'package:impekable/models/order.dart';
import 'package:impekable/env.dart';

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
            Expanded(
              child: SingleChildScrollView(
                child:Column(
                  children: <Widget>[
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
                              item.itemName = 'Chicken hamburger'+item.itemId.toString();
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
              ),
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