import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islamic_tube/tabs/search.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        leading: Image.asset(
          'assets/Logo.png',
          scale: 1,
        ),

        // actions:Icondata.map((I)=>IconButton(onPressed: (){}, icon: Icon(I))).toList(),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MysearchDelegate());
              },
              icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}
