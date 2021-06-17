import 'package:ecotopia/Login.dart';
import 'package:ecotopia/home.dart';
import 'package:ecotopia/leaderboard.dart';
import 'package:ecotopia/orderPlaced.dart';
import 'package:ecotopia/pay.dart';
//import 'package:ecotopia/profile.dart';
import 'package:ecotopia/register.dart';
import 'package:ecotopia/splashScreen.dart';
import 'package:ecotopia/tank.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'congratulations.dart';
import 'donation.dart';
import 'notifications.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => SplashScreen()),
      GetPage(name: '/login', page: () => LoginScreen()),
      GetPage(name: '/register', page: () => RegisterScreen()),
      GetPage(name: '/home', page: () => Home()),
      GetPage(name: '/leaderboard', page: () => LeaderBoard()),
      GetPage(name: '/reward', page: () => Reward()),
      GetPage(name: '/notifications', page: () => Notifications()),
      GetPage(name: '/donation', page: () => Donate()),
      GetPage(name: '/pay', page: () => Pay()),
      //   GetPage(name: '/profile', page: () => Profile()),
      GetPage(
          name: '/order',
          page: () => Order(
                size: 80.0,
                color: Colors.blue,
              )),
      GetPage(name: '/tank', page: () => Tank()),
      // GetPage(
      //     name: '/third',
      //     page: () => Third(),
      //     transition: Transition.zoom
      // ),
    ],
  ));
}
