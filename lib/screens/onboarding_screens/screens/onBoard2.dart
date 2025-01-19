import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_textstyles.dart';
import 'package:ui_task1/widgets/mainbutton.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class OnBoard2 extends StatefulWidget {
  const OnBoard2({super.key});

  @override
  _OnBoard2State createState() => _OnBoard2State();
}

class _OnBoard2State extends State<OnBoard2> {
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
    return Scaffold(
      body: _controller.value.isInitialized
          ? Stack(
              children: [
                Positioned.fill(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: _controller.value.size.width,
                      height: _controller.value.size.height,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                  //     AspectRatio(
                  //   aspectRatio: _controller.value.aspectRatio,
                  //   child: VideoPlayer(_controller),
                  // )
                ),
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
                    mainButton(
                      btnText: "إبدأ الآن",
                      onTap: () {
                        Navigator.pushNamed(context, "/recommendations");
                        print("Navigating to /recommendations");
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/login");
                            print("login pressed");
                          },
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyles.third16BoldUnderlinedWhite,
                          ),
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
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
