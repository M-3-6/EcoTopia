import 'package:ecotopia/home.dart';
import 'package:ecotopia/pay.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Donate extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _DonateState createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  var _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Donation",
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
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Image.asset(
                        "images/donation.png",
                        height: 300,
                        width: 300,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "How much wanna Donate?",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      DropdownButton(
                          value: _value,
                          hint: Text("Choose Price",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[350],
                              )),
                          items: [
                            DropdownMenuItem(
                              child: Text("₹ 10000",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey[800])),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("₹ 8000",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey[800])),
                              value: 2,
                            ),
                            DropdownMenuItem(
                                child: Text("₹ 6000",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[800])),
                                value: 3),
                            DropdownMenuItem(
                                child: Text("₹ 5000",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[800])),
                                value: 4),
                            DropdownMenuItem(
                                child: Text("₹ 3000",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[800])),
                                value: 5),
                            DropdownMenuItem(
                                child: Text("₹ 1000",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[800])),
                                value: 6),
                            DropdownMenuItem(
                                child: Text("₹ 500",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[800])),
                                value: 7),
                            DropdownMenuItem(
                                child: Text("₹ 200",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[800])),
                                value: 8),
                            DropdownMenuItem(
                                child: Text("₹ 100",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[800])),
                                value: 9),
                            DropdownMenuItem(
                                child: Text("₹ 50",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[800])),
                                value: 10)
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                      SizedBox(height: 10),
                      FlatButton(
                          onPressed: () => Get.to(Pay()),
                          color: Colors.white,
                          height: 35,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "DONATE",
                            style: TextStyle(fontSize: 17),
                          )),
                      SizedBox(height: 50),
                      Padding(
                        padding: EdgeInsets.only(left: 80, right: 60),
                        child: Row(
                          children: [
                            Text(
                              "Or donate something else?",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Click here",
                              style: TextStyle(color: Colors.blue[300]),
                            )
                          ],
                        ),
                      )
                    ],
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
