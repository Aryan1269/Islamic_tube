// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islamic_tube/home.dart';

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
              backgroundColor: Colors.green,
              bottomNavigationBar: TabBar(
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                labelStyle: TextStyle(fontSize: 10),
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
                home(),
                Center(
                  child: Text('home'),
                ),
                Center(
                  child: Text('home'),
                ),
                Center(
                  child: Text('home'),
                ),
                Center(
                  child: Text('home'),
                ),
              ]),
            ),
          )),
    );
    
  }
}
