import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Reward extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _RewardState createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  var rewards = [
    {
      "message": "You have won the Third position.Your Reward is on the way!",
      "date": "15 Jun 2021"
    },
    {
      "message": "Water Usage reduced by: 100 Ltrs.Keep up the Good Work! ",
      "date": "14 Jun 2021"
    },
    {
      "message": "Won No.1 Water Harvester Title.Congratulations!",
      "date": "11 Jun 2021"
    },
    {
      "message": "Thank you for your donation and great heart to help.",
      "date": "11 Jun 2021"
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
          width: 650,
          color: Colors.white,
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
                    child: SingleChildScrollView(
                      child: Image.asset(
                        "images/reward.png",
                        height: 300,
                        width: 300,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: rewards.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 550,
                        height: 60,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          child: Card(
                            color: Color.fromRGBO(168, 196, 238, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  child: FaIcon(
                                    FontAwesomeIcons.award,
                                    color: Colors.amber[600],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${rewards[index]["message"]}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Text(
                                      "${rewards[index]["date"]}",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 11,
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
