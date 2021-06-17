import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Rainwater extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _RainwaterState createState() => _RainwaterState();
}

class _RainwaterState extends State<Rainwater> {
  var tips = [
    {
      "message": "Check your toilets,faucets and pipes for leaks.",
    },
    {
      "message":
          "If you wash dishes by hand, don't leave the water running for rinsing. ",
    },
    {
      "message": "Turn off the water while brushing your teeth.",
    },
    {
      "message":
          "Tell your children not to play with the hose and not to run the hose while washing your car.",
    },
  ];
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
                            "images/Rainwaterharvesting.png",
                            height: 300,
                            width: 300,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[900],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      child: Text(
                                    "Harvested Rainwater",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            "Daily",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Weekly",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          "Monthly",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
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
