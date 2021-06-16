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
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Congratulations",style: TextStyle(color: Colors.blue[900]),),
            InkWell(
              onTap: () => null,
              child: Image.asset("images/person2.png",height: 39,width: 39,),
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
              decoration: BoxDecoration(
                image: DecorationImage(
                image:AssetImage("images/reward.png"),
                fit: BoxFit.cover
                ),
              ),
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
                
                  child:SingleChildScrollView(
                  child: Image.asset("images/reward.png",height: 300,width: 300,),
                  ),
                ),
             ),

                Expanded(

                  child: ListView.builder(
                    itemCount: rewards.length,
                    itemBuilder: (context, index) {
                      return Container(

                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child:Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                              children: [
                                
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FaIcon(FontAwesomeIcons.award,color: Colors.amber[600],),
                                    Text("${rewards[index]["message"]},",textAlign: TextAlign.left,),
                                    Text(
                                      "${rewards[index]["date"]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                                
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
