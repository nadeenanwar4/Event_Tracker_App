import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_textstyles.dart';

void main() {
  runApp(OnBoard1());
}

class OnBoard1 extends StatefulWidget {
  OnBoard1({super.key});

  @override
  State<OnBoard1> createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "/onboard2");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logoImg,
              width: 159.97,
              height: 65.23,
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              width: 200,
              height: 28,
              child: Text(
                "!مغامراتك بانتظارك",
                style: TextStyles.primary24SemiBold3f4857,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
