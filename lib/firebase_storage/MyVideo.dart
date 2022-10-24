// import 'package:chewie/chewie.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:uuid/uuid.dart';
// import 'package:video_player/video_player.dart';


// class VideoWidget extends StatefulWidget {

//   final bool play=true;
//   final String url="gs://islamtube-36d80.appspot.com/files/10000000_355233925636951_5013139508595553250_n.mp4";

//   // const VideoWidget({Key? key, required this.url, required this.play})
//   //     : super(key: key);

//   @override
//   _VideoWidgetState createState() => _VideoWidgetState();
// }


// class _VideoWidgetState extends State<VideoWidget> {
//   late VideoPlayerController videoPlayerController ;
//   late Future<void> _initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     super.initState();
//     videoPlayerController = new VideoPlayerController.network(widget.url);
//     _initializeVideoPlayerFuture = videoPlayerController.initialize().then((_) {
//       setState(() {});
//     });
//   }
//   @override
//   void dispose() {
//     videoPlayerController.dispose();
//     //    widget.videoPlayerController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _initializeVideoPlayerFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return new Container(
//             child: Card(
//               key: new PageStorageKey(widget.url),
//               elevation: 5.0,
//               child: Column(
//                 children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Chewie(
//                       key: new PageStorageKey(widget.url),
//                       controller: ChewieController(
//                         videoPlayerController: videoPlayerController,
//                         aspectRatio: 3 / 2,
//                         autoInitialize: true,
//                         looping: false,
//                         autoPlay: false,
//                         // Errors can occur for example when trying to play a video
//                         // from a non-existent URL
//                         errorBuilder: (context, errorMessage) {
//                           return Center(
//                             child: Text(
//                               errorMessage,
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }
//         else {
//           return Center(
//             child: CircularProgressIndicator(),);
//         }
//       },
//     );
//   }
// }

