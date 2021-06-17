import 'package:flutter/material.dart';

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
        child:Padding(
          padding: EdgeInsets.all(30),
          child: Column(children: [
        Text("Enter Tank Name:",style:TextStyle(color:Colors.white,fontSize:18)),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Tank 1',hintStyle: TextStyle(color: Colors.grey)
            ),
        ),
        SizedBox(height:20),
        Text("Enter Tank Capacity:",style:TextStyle(color:Colors.white,fontSize:18)),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: '500 Ltr',hintStyle: TextStyle(color: Colors.grey)
            ),
        ),
        SizedBox(height:20),
        Text("Type of Water Supply:",style:TextStyle(color:Colors.white,fontSize:18)),
        DropdownButton<String>(
          hint: Text("Panchayat Connection"),
          value: dropdownValue,
            onChanged: (newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['Panchayat Connection', 'Harvested Rainwater', 'Well Connection']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
        ),
        SizedBox(height:50),
        FlatButton(
          onPressed: () => null,
          child: Text("ADD A TANK",style: TextStyle(fontSize: 18),),
          color: Colors.white,
          minWidth: 40,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

        ),
      ]))),
    );
  }
}
