import 'package:ecotopia/Login.dart';
import 'package:ecotopia/home.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  //const LoginScreen({ Key? key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String email = "";
  String password = "";
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          new Image(
            image: new AssetImage("images/background.jpeg"),
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          // Container(
          //     child: BackdropFilter(
          //   filter: ImageFilter.blur(
          //     sigmaX: 7.0,
          //     sigmaY: 7.0,
          //   ),
          //   child: Container(child: Text(".")),
          // )),
          Align(
            alignment: Alignment(0, 0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 180.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/garbage.png'),
                          fit: BoxFit.fill,
                        ),
                        // shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 40),
                    Container(
                        margin: EdgeInsets.only(bottom: 30),
                        padding: EdgeInsets.only(left: 60, right: 60),
                        child: Text(
                          "Register for EcoTopia",
                          style: GoogleFonts.averiaLibre(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                          textAlign: TextAlign.center,
                        )),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen())),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(70, 71, 221, 1),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(bottom: 10),
                          width: 270,
                          height: 35,
                          child: Align(
                              alignment: Alignment(0, 0),
                              child: Text("Continue with Mobile number",
                                  style: TextStyle(color: Colors.white)))),
                    ),
                    SizedBox(width: 40),
                    InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment(0, 0),
                          width: 440,
                          height: 45,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    padding: EdgeInsets.all(2),
                                    child: OutlineButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        borderSide: BorderSide(
                                          width: 3.0,
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                        ),
                                        onPressed: null,
                                        child: FaIcon(FontAwesomeIcons.google,
                                            color: Colors.white))),
                                SizedBox(width: 20),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    padding: EdgeInsets.all(2),
                                    child: OutlineButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        borderSide: BorderSide(
                                          width: 3.0,
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                        ),
                                        onPressed: null,
                                        child: FaIcon(FontAwesomeIcons.facebook,
                                            color: Colors.white))),
                              ]),
                        )),
                    SizedBox(width: 20),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.only(left: 60, right: 60),
                        child: Text(
                          "By continuing, you agree our Terms of Services  & Privacy Policy",
                          style: TextStyle(color: Colors.blueGrey),
                          textAlign: TextAlign.center,
                        )),
                  ]),
            ),
          )
        ],
      ),
    ));
  }
}
