import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islamic_tube/screens/videofeed.dart';
import 'package:islamic_tube/AppBarFun/search.dart';

import '../home.dart';

class mainHome extends StatefulWidget {
  const mainHome({Key? key}) : super(key: key);

  @override
  State<mainHome> createState() => mainHomeState();
}

class mainHomeState extends State<mainHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:PreferredSize(child: home(),
        preferredSize: Size.fromHeight(60),
      ),
      body: Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
         
          Expanded(child: VideoFeed()),
        ],
      ),
    ),
    );
  }
}