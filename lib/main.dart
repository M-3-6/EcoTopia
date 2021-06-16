import 'package:ecotopia/Login.dart';
import 'package:ecotopia/home.dart';
import 'package:ecotopia/leaderboard.dart';
import 'package:ecotopia/register.dart';
import 'package:ecotopia/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'congratulations.dart';

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
      // GetPage(name: '/billing', page: () => Billing()),
      /*GetPage(name: '/second', page: () => Second()),
          GetPage(
              name: '/third',
              page: () => Third(),
              transition: Transition.zoom
          ),*/
    ],
  ));
}
