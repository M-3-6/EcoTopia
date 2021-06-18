import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'Login.dart';
import 'register.dart';

class SplashScreen extends StatefulWidget {
  //const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 3),
  //       () => Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => LoginScreen())));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(children: [
      new Image(
        image: new AssetImage("images/splash.jpg"),
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 80),
          Text(
            "Eco Topia",
            style: GoogleFonts.allura(
                textStyle: TextStyle(color: Colors.white, fontSize: 60)),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            "THE SUSTAINABLE VILLAGE",
            style: TextStyle(color: Colors.white, fontSize: 12),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Container(),
          ),
          FlatButton(
            onPressed: () => Get.to(RegisterScreen()),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.black,
            child: Text("SIGN UP/LOG IN",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),
          SizedBox(height: 40),
        ],
      ),
    ])));
  }
}
