import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Profile",
              style: TextStyle(color: Colors.white, fontSize: 20))),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(children: [
              ClipOval(
                child: Image.asset(
                  "images/person2.png",
                  fit: BoxFit.cover,
                  width: 110,
                  height: 110,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Ramesh Babu",
                  style: TextStyle(color: Colors.white, fontSize: 23)),
              SizedBox(
                height: 10,
              ),
              Text("Kalathil(H)",
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              Text("Kuttoor P.O",
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              Text("Devagiri dist",
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FlatButton(
                      minWidth: 20,
                      onPressed: () => null,
                      height: 90,
                      color: Color.fromRGBO(8, 29, 45, 1),
                      child: Text("Family Strength: 5",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () => null,
                      minWidth: 20,
                      height: 90,
                      color: Color.fromRGBO(8, 29, 45, 1),
                      child: Text("Current Rank: 3",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () => null,
                      minWidth: 20,
                      height: 90,
                      color: Color.fromRGBO(8, 29, 45, 1),
                      child: Text("Avg Cons./Month: 20K Ltrs",
                          style: TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    minWidth: 300,
                    height: 45,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () => null,
                    color: Colors.white,
                    child: Text(
                      "Current Water Level: 75%",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    minWidth: 300,
                    height: 45,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () => null,
                    color: Colors.white,
                    child: Text("Water Conserved than last month 2000 Ltrs"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    minWidth: 300,
                    height: 45,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () => null,
                    color: Colors.white,
                    child: Text("No. of tanks:2"),
                  ),
                ],
              ),
            ]),
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
