import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  //const NavBar({ Key? key }) : super(key: key);
  List navRoutes = [
    {"pagename": "Home", "icon": Icon(Icons.home_filled), "to": '/home'},
    {
      "pagename": "Leaderboard",
      "icon": FaIcon(FontAwesomeIcons.medal),
      "to": '/leaderboard'
    },
    {"pagename": "Profile", "icon": Icon(Icons.person), "to": '/profile'},
    {
      "pagename": "Notifications",
      "icon": Icon(Icons.notifications),
      "to": '/notifications'
    },
    {
      "pagename": "Rewards",
      "icon": FaIcon(FontAwesomeIcons.award),
      "to": '/reward'
    },
    {"pagename": "Contact Us", "icon": Icon(Icons.chat), "to": '/home'},
    {"pagename": "Settings", "icon": Icon(Icons.settings), "to": '/home'},
    {"pagename": "Help", "icon": Icon(Icons.help), "to": '/home'},
    {"pagename": "Logout", "icon": Icon(Icons.logout), "to": '/home'},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Row(children: [
              ClipOval(
                child: Image.asset(
                  "images/person2.png",
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ramesh Babu",
                                style: TextStyle(fontSize: 22),
                                textAlign: TextAlign.left),
                          ]))),
            ]),
          ),
          SizedBox(
              height: 700,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: navRoutes.length,
                    itemBuilder: (context, index) => Column(children: [
                      ListTile(
                          title: Text("${navRoutes[index]['pagename']}"),
                          leading: navRoutes[index]["icon"],
                          onTap: () => Get.toNamed(navRoutes[index]['to'])),
                      Divider()
                    ]),
                  )))
        ],
      ),
    );
  }
}
