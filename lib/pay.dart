import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Pay extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  var payment = [
    {
      "img": "credit.png",
      "method": "Credit Card",
    },
    {
      "img": "gpay.png",
      "method": "Google Pay",
    },
    {
      "img": "netbanking.png",
      "method": "Net Banking",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(8, 29, 45, 1),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Payment",
              style: TextStyle(color: Colors.white),
            ),
            InkWell(
              onTap: () => null,
              child: Image.asset(
                "images/person2.png",
                height: 39,
                width: 39,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Container(
          width: 570,
          child: Container(
            //Padding(
            // padding: EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 320,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                      color: Color.fromRGBO(8, 29, 45, 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                        ),
                      ),
                      child: SizedBox(
                        child: SingleChildScrollView(
                          child: Image.asset(
                            "images/pay.png",
                            height: 200,
                            width: 200,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Choose your Payment method",
                  style: TextStyle(color: Colors.blue[900], fontSize: 18),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: payment.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                          child: Card(
                            color: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Container(
                                    height: 35,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                            "images/" +
                                                "${payment[index]["img"]}",
                                            height: 50,
                                            width: 50),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "${payment[index]["method"]}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.black),
            title: Text(""),
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person, color: Colors.black),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.black),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(""))
        ],
      ),
    );
  }
}
