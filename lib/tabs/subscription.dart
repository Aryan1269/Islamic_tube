import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:islamic_tube/AppBarFun/search.dart';

class subscription extends StatefulWidget {
  const subscription({Key? key}) : super(key: key);

  @override
  State<subscription> createState() => _subscriptionState();
}

class _subscriptionState extends State<subscription> {
  List<IconData> Icondata = [
    Icons.cast_sharp,
    Icons.notifications,
    Icons.search,
    Icons.account_circle,
  ];

// Making function for story structure
  Widget _story() {
    return Padding(
      padding: EdgeInsets.only(left: 7, top: 7, right: 7),
      child: CircleAvatar(
        backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
        radius: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
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
      body: Container(
        child: Card(
          // color: Colors.green,
          elevation: 0,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,        horizontal
              // mainAxisAlignment: MainAxisAlignment.center,          vertical
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                        _story(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
