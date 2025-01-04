import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_textstyles.dart';
import 'package:ui_task1/widgets/mainbutton.dart';
import 'package:video_player/video_player.dart';

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
                          AppAssets.transparentLogoImg,
                          width: 159.97,
                          height: 65.23,
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Text(
                          "!مغامراتك بانتظارك",
                          style: TextStyles.primary32BoldWhite,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          ".اكتشف الفعاليات الشيقة في أنحاء السعودية عبر تطبيقنا",
                          style: TextStyles.primary16BoldWhite,
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
                            Text(
                              "تسجيل الدخول",
                              style: TextStyles.third16BoldUnderlinedWhite,
                            ),
                            Text(
                              "هل لديك حساب؟",
                              style: TextStyles.third16NormalWhite,
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
