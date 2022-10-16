import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islamic_tube/screens/videofeed.dart';

class demov extends StatefulWidget {
  const demov({Key? key}) : super(key: key);

  @override
  State<demov> createState() => demovState();
}

class demovState extends State<demov> {
  List<IconData> Icondata = [
    Icons.cast_sharp,
    Icons.notifications,
    Icons.search,
    Icons.account_circle,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: Image.asset('assets/Logo.png',scale: 1,),
        
        actions:Icondata.map((I)=>IconButton(onPressed: (){}, icon: Icon(I))).toList(),
     
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