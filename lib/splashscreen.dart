import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:islamic_tube/screens/GetStarted.dart';
import 'package:islamic_tube/tabs/bottomNav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var auth = FirebaseAuth.instance;
  var islogin = false;
  checkIfLogin() async {
    auth.authStateChanges().listen((User? user) {
      if (user != null && mounted) {
        setState(() {
          islogin = true;
        });
      }
    });
  }

  @override
  void initState() {
    
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      checkIfLogin();
      Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (_) =>islogin
          ? const bottomNav()
          : GetStarted()));
    });
  }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/splash.png'), fit: BoxFit.fill)),
          child: Align(
            alignment: Alignment.center,
            child: Image.asset('assets/IslamicV.png', scale: 5),
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
