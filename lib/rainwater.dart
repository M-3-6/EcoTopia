import 'package:ecotopia/tank.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Rainwater extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _RainwaterState createState() => _RainwaterState();
}

class _RainwaterState extends State<Rainwater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rainwater Harvesting",
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
                      height: 240,
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
                            "images/Rainwaterharvesting.png",
                            height: 240,
                            width: 300,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[900],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Harvested Rainwater",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 15, 5, 0),
                                    child: Container(
                                      height: 40,
                                      width: 325,
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                              height: 30,
                                              width: 110,
                                              decoration: BoxDecoration(
                                                color: Colors.blueGrey[100],
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 5, 0, 0),
                                                child: Text(
                                                  "Daily",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              )),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                              height: 30,
                                              width: 90,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 5, 0, 0),
                                                child: Text(
                                                  "Weekly",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              )),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                              height: 30,
                                              width: 90,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 5, 0, 0),
                                                child: Text(
                                                  "Monthly",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              )),
                                          SizedBox(
                                            width: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(30, 10, 30, 0),
                                        child: Text(
                                          "20 February 2021",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(110, 10, 30, 0),
                                        child: Text(
                                          "225 lt",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                  Container(
                                      child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(30, 8, 30, 0),
                                        child: Text(
                                          "19 February 2021",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(110, 8, 30, 0),
                                        child: Text(
                                          "105 lt",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                  Container(
                                      child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(30, 8, 30, 0),
                                        child: Text(
                                          "18 February 2021",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(117, 8, 30, 0),
                                        child: Text(
                                          "50 lt",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                  Container(
                                      child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(30, 8, 30, 0),
                                        child: Text(
                                          "17 February 2021",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(110, 8, 30, 0),
                                        child: Text(
                                          "175 lt",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                  Container(
                                      child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(30, 8, 30, 0),
                                        child: Text(
                                          "16 February 2021",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(110, 8, 30, 0),
                                        child: Text(
                                          "300 lt",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 0),
                                      child: Container(
                                        child: Divider(
                                          color: Colors.grey[50],
                                        ),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                    child: Text(
                                      "Newly started a rainwater harvesting system?",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                      child: FlatButton(
                                          onPressed: () => Get.to(Tank()),
                                          color: Colors.white,
                                          height: 18,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  13, 5, 13, 5),
                                              child: Text(
                                                "ADD A TANK",
                                                style: TextStyle(fontSize: 16),
                                              )))),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ]),
            ),
          )),
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
