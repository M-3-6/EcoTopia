import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LeaderBoard extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  var names = [
    {"name": "RAJASEKHAR", "points": "2515 pts"},
    {"name": "MARIYA", "points": "2421 pts"},
    {"name": "RAMESH", "points": "1925 pts"},
    {"name": "DEENAMMA", "points": "1322 pts"},
    {"name": "RAJESH", "points": "1012 pts"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(8, 29, 45, 1),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("LeaderBoard"),
            Icon(
              Icons.share,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Container(
          width: 570,
          color: Color.fromRGBO(229,229,229,1),
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
                

                  child: Column(
                    mainAxisSize : MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/person1.png",
                        height: 90,
                        width: 90,
                      ),
                      FaIcon(
                        FontAwesomeIcons.award,
                        color: Colors.amber[600],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "images/person2.png",
                                height: 70,
                                width: 70,
                              ),
                              FaIcon(
                                FontAwesomeIcons.award,
                                color: Colors.amber[600],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "images/person3.png",
                                height: 60,
                                width: 60,
                              ),
                              FaIcon(
                                FontAwesomeIcons.award,
                                color: Colors.amber[600],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
             ),

                Expanded(

                  child: ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return Container(

                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                          child: Card(
                            color: Color.fromRGBO(168, 196, 238, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 17,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("${index + 1}"),
                                    Text("${names[index]["name"]}"),
                                    Text(
                                      "${names[index]["points"]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 17,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

            // child: Column(
            //   children: [
            //     Container(
            //       color: Color.fromRGBO(8, 29, 45, 1),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Image.asset("images/person1.png"),
            //           Image.asset("images/person2.png"),
            //           Image.asset("images/person3.png"),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
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
