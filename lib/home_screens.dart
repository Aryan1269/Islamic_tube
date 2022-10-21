// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:islamic_tube/home.dart';
import 'package:islamic_tube/screens/prac.dart';
import 'package:islamic_tube/tabs/library.dart';
import 'package:islamic_tube/tabs/subscription.dart';
import 'package:islamic_tube/tabs/trending.dart';
import 'package:islamic_tube/tabs/videocard.dart';
// import 'package:islamic_tube/videocard.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
          length: 5,
          child: Builder(
            builder: (context) => Scaffold(
              backgroundColor: Color.fromARGB(255, 50, 153, 39),
              bottomNavigationBar: TabBar(
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.transparent,
                labelColor: Color.fromARGB(255, 7, 7, 7),
                labelStyle: TextStyle(fontSize: 9),
                labelPadding: const EdgeInsets.all(0),
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(height: 60, icon: Icon(Icons.home), text: 'Home'),
                  Tab(height: 60, icon: Icon(Icons.explore), text: 'Explore'),
                  Tab(
                      height: 60,
                      icon: Icon(Icons.add_circle_outline),
                      text: 'Create'),
                      
                  Tab(
                      height: 60,
                      icon: Icon(Icons.subscriptions_outlined),
                      text: 'SUBSCRIPTION'),
                  Tab(
                      height: 60,
                      icon: Icon(Icons.library_add),
                      text: 'LIBRARY'),
                ],
              ),
              body: TabBarView(children: [
                
                demov(),
                Trending(),
            //  videocard(),
                home(),
               subscription(),
                LIBRARYs(),
              ]),
            ),
          )
          ),
          

    );
    
  }
}
