import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_fonts.dart';
import 'package:ui_task1/widgets/mainButton.dart';
import 'package:video_player/video_player.dart';

import '../widgets/textButton.dart';

void main() => runApp(const VideoScreen());

/// Stateful widget to fetch and then display video content.
class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/video.mp4")
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: _controller.value.isInitialized
              ? Stack(
                  children: [
                    Positioned.fill(
                        child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/transparent_logo.png",
                          width: 159.97,
                          height: 65.23,
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        const Text(
                          "!مغامراتك بانتظارك",
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          ".اكتشف الفعاليات الشيقة في أنحاء السعودية عبر تطبيقنا",
                          style: TextStyle(
                            fontFamily: 'Athelas',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        mainButton(btnText: "إبدأ الآن"),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            textButton(
                              btnText: "تسجيل الدخول",
                              btnColor: Colors.white,
                              fontSize: 16,
                              btnTextWeight: FontWeight.bold,
                              fontFamily: AppFonts.thirdFontFamily,
                              btnTextDecoration: TextDecoration.underline,
                            ),
                            textButton(
                              btnText: "هل لديك حساب؟",
                              btnColor: Colors.white,
                              fontSize: 16,
                              btnTextWeight: FontWeight.normal,
                              fontFamily: AppFonts.thirdFontFamily,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              : const Center(child: CircularProgressIndicator()),
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
