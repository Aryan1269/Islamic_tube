import 'package:flutter/material.dart';
import 'package:islamic_tube/home_screens.dart';
import 'package:islamic_tube/screens/GetStarted.dart';
import 'package:islamic_tube/screens/Register.dart';
import 'package:islamic_tube/splashscreen.dart';
import 'package:islamic_tube/screens/sigin.dart';
import 'package:islamic_tube/tabs/search.dart';

import 'home.dart';

void main() {
  runApp(Merged());
}

class Merged extends StatefulWidget {
  const Merged({Key? key}) : super(key: key);

  @override
  State<Merged> createState() => _MergedState();
}

class _MergedState extends State<Merged> {
  @override
  Widget build(BuildContext context) {

   return MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
    ),
    debugShowCheckedModeBanner: false,
   routes: {
        "/": (context) => SplashScreen(),
        "/getstarted": (context) => const GetStarted(),
        "/sign": (context) => const signin(),
        "/register": (context) => const register(),
        "/home": (context) => const Home_screen(),
        // "/search": (context) =>  MysearchDelegate(),
      },
  );
    
  }
}