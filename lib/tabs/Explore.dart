import 'package:flutter/material.dart';
import 'package:islamic_tube/AppBarFun/search.dart';
import '../home.dart';
import '../screens/videofeed.dart';
// import 'package:youtube_clone/videoInfo.dart';
      

class Trending extends StatefulWidget {
  // Trending({Key key}) : super(key: key);

  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
   
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              "https://s.ytimg.com/yts/img/trending/nav_icons/coverMusic_84BG_320x320-vflI7Luak.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              "https://s.ytimg.com/yts/img/trending/nav_icons/coverGaming_84BG_320x320-vflr0EUXA.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              "https://s.ytimg.com/yts/img/trending/nav_icons/coverNews_84BG_320x320-vflYn8aEE.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              "https://s.ytimg.com/yts/img/trending/nav_icons/coverMovies_84BG_320x320-vflVwPGdB.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              "https://s.ytimg.com/yts/img/trending/nav_icons/coverNews_84BG_320x320-vflYn8aEE.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              "https://s.ytimg.com/yts/img/trending/nav_icons/coverNews_84BG_320x320-vflYn8aEE.png"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: VideoFeed()),
          ],
        ),
      ),
    );
  }
}