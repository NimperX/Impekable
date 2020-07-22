class Item{
  int id;
  String image;
  String name;
  String desc;
  int price;
  String category;

  Item({this.id,this.name,this.desc,this.image,this.price,this.category});
}

class AddOn{
  String addon;
  int price;

  AddOn({this.addon, this.price});
}

class Order{
  int orderId;
  List<OrderItem> items = [];
  bool orderConfirmed = false;

  clear(){
    orderId = null;
    items = [];
    orderConfirmed = false;
  }

  static Order order = new Order();
}

class OrderItem{
  int itemId;
  String itemName;
  int quantity;
  int price;
  List<AddOn> selectedAddons = [];
  String note;
  String variance;
}

class User{
  String firstName;
  String lastName;
  int phoneNo;
  bool loggedIn;

  static User user = new User();
}
