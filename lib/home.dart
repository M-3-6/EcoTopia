import 'package:ecotopia/leaderboard.dart';
import 'package:flutter/material.dart';

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
              onPressed: () => null);
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 250,
                  width: 500,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ListTile(
                        title: Text(
                          "The Leaderboard is ready!",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        subtitle: Text(
                          "Take a look!",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        // leading: SizedBox(height:10),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                            size: 40,
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LeaderBoard())),
                        ),
                      ),
                    ),
                    color: Color.fromRGBO(8, 29, 45, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
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
                          onTap: () => null,
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
                      Card(
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ),
                      Card(
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
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
