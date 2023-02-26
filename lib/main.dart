import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:islamic_tube/screens/GetStarted.dart';
import 'package:islamic_tube/screens/Register.dart';
import 'package:islamic_tube/splashscreen.dart';
import 'package:islamic_tube/screens/sigin.dart';
import 'package:islamic_tube/tabs/bottomNav.dart';

import 'home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Merged());
}

class Merged extends StatefulWidget {
  
  const Merged({Key? key}) : super(key: key);

  @override
  State<Merged> createState() => _MergedState();
}

class _MergedState extends State<Merged> {
  var auth = FirebaseAuth.instance;
  var islogin=false;
  checkIfLogin() async{
    auth.authStateChanges().listen((User? user) {
      if(user !=null && mounted){
        setState(() {
          islogin=true;
        });
      }
     });
  }

  @override
  void initState() {
    checkIfLogin();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

   return MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
    ),
    debugShowCheckedModeBanner: false,
   routes: {
        "/": (context) => islogin? const bottomNav():SplashScreen(),
        "/getstarted": (context) => const GetStarted(),
        "/sign": (context) => const signin(),
        // "/register": (context) => const register(),
        "/register": (context) =>const register(),
        "/home": (context) => const bottomNav(),
        // "/search": (context) =>  MysearchDelegate(),
      },
  );
    
  }
}