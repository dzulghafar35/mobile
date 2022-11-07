import 'package:flutter/material.dart';
import 'homestay.dart';

class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  double totalPrice = 0;
  double discountPrice = 0;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 246, 41, 41),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            "Checkout",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        body: Builder(builder: (context) {
          return Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      selectedAddressSection(),
                      checkoutItem(),
                      priceSection()
                    ],
                  ),
                ),
                flex: 90,
              ),
              Expanded(
                child: Container(
                  width: 200,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      /*Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => OrderPlacePage()));*/
                    },
                    child: Text(
                      "Book",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                flex: 10,
              )
            ],
          );
        }),
      ),
    );
  }

  selectedAddressSection() {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              border: Border.all(color: Colors.grey.shade200)),
          padding: EdgeInsets.only(left: 12, top: 8, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "James Francois (Default)",
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Text(
                      "HOME",
                      style: TextStyle(
                          color: Colors.indigoAccent.shade200, fontSize: 8),
                    ),
                  )
                ],
              ),
              createAddressText(
                  "431, Commerce House, Nagindas Master, Fort", 16),
              createAddressText("Mumbai - 400023", 6),
              createAddressText("Maharashtra", 6),
              SizedBox(
                height: 6,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Mobile : ",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade800)),
                  TextSpan(
                      text: "02222673745",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ]),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                color: Colors.grey.shade300,
                height: 1,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }

  createAddressText(String strAddress, double topMargin) {
    return Container(
      margin: EdgeInsets.only(top: topMargin),
      child: Text(
        strAddress,
        style: TextStyle(fontSize: 18, color: Colors.grey.shade800),
      ),
    );
  }

  checkoutItem() {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                border: Border.all(color: Colors.grey.shade200)),
            padding: EdgeInsets.only(left: 12, top: 8, right: 12),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Number of night: ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    onPressed: () {
                      if (count > 0) {
                        count = count - 1;
                        setState(() => this.count);
                      }
                    },
                    icon: Icon(
                      Icons.remove,
                      size: 24,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade200,
                    padding:
                        const EdgeInsets.only(bottom: 2, right: 12, left: 12),
                    child: Text(
                      '$count',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        count = count + 1;
                        setState(() => this.count);
                      },
                      icon: Icon(
                        Icons.add,
                        size: 24,
                        color: Colors.grey.shade700,
                      )),
                ],
              ),
              Text(
                "Promo Code:",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.black12,
                    filled: true,
                  ),
                ),
              )
            ]),
          )),
    );
  }

  priceSection() {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              border: Border.all(color: Colors.grey.shade200)),
          padding: EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 4,
              ),
              Text(
                "PRICE DETAILS",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                margin: EdgeInsets.symmetric(vertical: 4),
                color: Colors.grey.shade400,
              ),
              SizedBox(
                height: 8,
              ),
              createPriceItem("Total ", "0.00", Colors.grey.shade700),
              createPriceItem("Discount", "0.00", Colors.teal.shade300),
              createPriceItem("Tax", "0.00", Colors.grey.shade700),
              createPriceItem("Order Total", "0.00", Colors.grey.shade700),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                margin: EdgeInsets.symmetric(vertical: 4),
                color: Colors.grey.shade400,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    "0.00",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  createPriceItem(String key, String value, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            key,
            style: TextStyle(color: Colors.grey.shade700, fontSize: 18),
          ),
          Text(
            value,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}
