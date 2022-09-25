
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islamic_tube/screens/GetStarted.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => GetStarted()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 182, 221, 113),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff70fc55),
                  Color(0xff4cfc8a),
                  Color(0xfffcfc36),
                  Color(0xfffcfc35),
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset('assets/logo1.png',scale: 2.3,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/image.png'),
            ),
          ),
        ],
      ),
    );
  }
}


