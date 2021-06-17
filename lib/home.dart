import 'package:ecotopia/congratulations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'donation.dart';
import 'leaderboard.dart';
import 'navbar.dart';
import 'reduce.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: const Icon(Icons.menu, color: Colors.grey),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        elevation: 0,
        backgroundColor: Color.fromRGBO(8, 29, 45, 1),
        actions: [
          InkWell(
              child: Image.asset("images/person2.png", height: 50, width: 50),
              onTap: () {}),
          SizedBox(width: 25)
        ],
      ),
      drawer: NavBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 290,
                  width: 500,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: ListTile(
                        title: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "The Leaderboard is ready!",
                            style: GoogleFonts.averiaLibre(
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 40)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Take a look!",
                              style: GoogleFonts.averiaLibre(
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 30)),
                              textAlign: TextAlign.left),
                        ),

                        // leading: SizedBox(height:10),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                            size: 40,
                          ),
                          onPressed: () => Get.to(LeaderBoard()),
                        ),
                      ),
                    ),
                    color: Color.fromRGBO(8, 29, 45, 1),
                    //    shape: RoundedRectangleBorder(
                    //    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        color: Color.fromRGBO(8, 29, 45, 1),
                        child: InkWell(
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("images/donate.png"),
                                fit: BoxFit.fitWidth,
                                // alignment: Alignment.topCenter,
                              ),
                            ),
                            child: Text(
                              "DONATE",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                          onTap: () => Get.to(Donate()),
                        ),
                      ),
                      Card(
                        color: Color.fromRGBO(8, 29, 45, 1),
                        child: InkWell(
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/usage.png",
                                ),
                                fit: BoxFit.fitWidth,
                                // alignment: Alignment.topCenter,
                              ),
                            ),
                            child: Text(
                              "USAGE",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                          onTap: () => null,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Card(
                          color: Color.fromRGBO(8, 29, 45, 1),
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/rain.png",
                                ),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.bottomCenter,
                              ),
                            ),
                            child: Text(
                              "RAIN WATER HARVESTING",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                        onTap: () => Get.to(Tank()),
                      ),
                      InkWell(
                        child: Card(
                          color: Color.fromRGBO(8, 29, 45, 1),
                          child: Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/reduce.png",
                                ),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.bottomCenter,
                              ),
                            ),
                            child: Text(
                              "REDUCE CONSUMPTION",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                        onTap: () => Get.to(Reduce()),
                      ),
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

class Tank {}
