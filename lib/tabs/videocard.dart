import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../home.dart';
import '../screens/videofeed.dart';

class videocard extends StatefulWidget {
  const videocard({Key? key}) : super(key: key);

  @override
  State<videocard> createState() => _videocardState();
}

class _videocardState extends State<videocard> {
  List<IconData> Icondata = [
    Icons.cast_sharp,
    Icons.notifications,
    Icons.search,
    Icons.account_circle,
  ];
  @override
  Widget build(BuildContext context) {

    Widget _videoView(){
      return  Card(
        margin: EdgeInsets.symmetric(vertical: 15),
                  elevation: 1,
                  color: Color.fromARGB(255, 196, 255, 198),
                  child: Container(  
                    child: Text("Video Card",
                    textAlign: TextAlign.center,),
                    
                    height: MediaQuery.of(context).size.height*0.3,
                    width: MediaQuery.of(context).size.width*1 ,
                    
                  ),
                  
                  
                );
                
    }
    return Scaffold(
      appBar: AppBar(  
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: Image.asset('assets/Logo.png',scale: 1,),
        
        actions:Icondata.map((I)=>IconButton(onPressed: (){}, icon: Icon(I))).toList(),
      ),

      
      body: ListView(  
        children: [
          
          SingleChildScrollView(  
            scrollDirection:Axis.vertical,
            child: Column(
              children: [
               _videoView(),
               _videoView(),
               _videoView(),
               _videoView(),
               _videoView(),
               _videoView(),
               _videoView(),
   
              ],
            ),
          )
        ],
      ),
    );
  }
}