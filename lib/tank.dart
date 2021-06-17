import 'package:flutter/material.dart';

class Tank extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _TankState createState() => _TankState();
}

class _TankState extends State<Tank> {
  @override
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
          child: Column(children: [
        Text("Enter Tank Name:"),
        Text("Enter Tank Capacity:"),
      ])),
    );
  }
}
