// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class Video extends StatefulWidget {
//   const Video({super.key});

//   @override
//   _VideoState createState() => _VideoState();
// }

// class _VideoState extends State<Video> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset("assets/videos/video.mp4")
//       ..initialize().then((_) {
//         setState(() {});
//         _controller.play();
//         _controller.setLooping(true);
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: _controller.value.aspectRatio,
//       child: VideoPlayer(_controller),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
