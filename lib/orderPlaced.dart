import 'package:flutter/material.dart';
import 'dart:math' as math show sin, pi,sqrt;
import 'package:flutter/animation.dart';


import 'circlepainter.dart';
import 'curvewave.dart';
import 'navbar.dart';



class Order extends StatefulWidget {
  const Order(
    
    { Key? key, 
    required this.size , 
    required this.color ,
    // required this.onPressed,
    // required this.child,
    }
    ) : super(key: key);
  final double size ;
  final Color color;
  // final Widget child;
  // final VoidCallback onPressed;
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> with TickerProviderStateMixin{
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget _button() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.size),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: <Color>[
                widget.color,
                // Colors.black
                (Color.lerp(widget.color, Colors.blue, .05))!
              ],
            ),
          ),
          child: ScaleTransition(
              scale: Tween(begin: 0.95, end: 1.0).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve:  CurveWave(),
                ),
              ),
              child: Icon(Icons.check, size: 44,color: Colors.white,)
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        ),
      drawer: NavBar(),
      body: Center(
        child: SingleChildScrollView(
          child:Column(children: [
           CustomPaint(
          painter: CirclePainter(
            _controller,
            color: widget.color,
            
          ),
          child: SizedBox(
            width: widget.size * 4.125,
            height: widget.size * 4.125,
            child: _button(),
          ),
        ),
            Text("Thank You ",style:TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.only(left: 60,right: 60),child: Text("Thank Tou for your donation.Your giving spirit makes a difference.",textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),),
            SizedBox(height: 30,),
            ],)
        ) ,
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