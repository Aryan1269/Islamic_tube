import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';

import '../home.dart';

class videoPlayer extends StatefulWidget {
  const videoPlayer({Key? key}) : super(key: key);

  @override
  State<videoPlayer> createState() => _videoPlayerState();
}

class _videoPlayerState extends State<videoPlayer> {
  String dataSource ="https://firebasestorage.googleapis.com/v0/b/islamtube-36d80.appspot.com/o/files%2Fpexels-sam-lion-5730885.mp4?alt=media&token=6deae608-3bd1-41de-8f90-cd8bc53c17c9";
      
  VideoPlayerController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(dataSource)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: home(),
        preferredSize: Size.fromHeight(60),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _controller!.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller!.value.aspectRatio,
                    child: VideoPlayer(_controller!),
                  )
                : Container(),
            //progress

            VideoProgressIndicator(
              _controller!,
              allowScrubbing: true,
              padding: const EdgeInsets.all(1),
            ),

            //create button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_previous),
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () {
                    _controller!.value.isPlaying
                        ? _controller!.pause()
                        : _controller!.play();
                      setState(() {
                        _controller!.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow;
                      });
                  },
                  icon: Icon(_controller!.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow),
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_next),
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
