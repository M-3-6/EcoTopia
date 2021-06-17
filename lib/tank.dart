import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tank extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _TankState createState() => _TankState();
}

class _TankState extends State<Tank> {
  @override
  var dropdownValue;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Add a Tank",
            style: TextStyle(color: Colors.white),
          )),
      body: Container(
          child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(children: [
                Container(
                  width: 500,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Enter Tank Name:",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                TextField(
                  style: TextStyle(fontSize: 18.0, color: Color(0xFFbdc6cf)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Tank 2',
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 500,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Enter Tank Capacity:",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                TextField(
                  style: TextStyle(fontSize: 18.0, color: Color(0xFFbdc6cf)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: '500 Ltr',
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 500,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      "Type of Water Supply:",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: DropdownButton<String>(
                      icon: Padding(
                        padding: EdgeInsets.only(left: 130),
                        child: FaIcon(FontAwesomeIcons.arrowDown,
                            color: Colors.white),
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.grey,
                      ),
                      hint: Text("Panchayat Connection",
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 18)),
                      value: dropdownValue,
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        'Panchayat Connection',
                        'Harvested Rainwater',
                        'Well Connection'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                FlatButton(
                  onPressed: () => null,
                  child: Text(
                    "ADD A TANK",
                    style: TextStyle(fontSize: 18),
                  ),
                  color: Colors.white,
                  minWidth: 40,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ]))),
    );
  }
}
