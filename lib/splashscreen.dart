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
    return Stack(
        children: [
          Container(
            
            decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/splash.png'),fit: BoxFit.fill)
            ),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/IslamicV.png',scale: 5       
              ),
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
      
    );
  }
}
