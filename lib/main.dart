import 'package:flutter/material.dart';
import 'package:islamic_tube/splashscreen.dart';

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
    home: Scaffold(
      body: SplashScreen(),
    ),
  );
    
  }
}