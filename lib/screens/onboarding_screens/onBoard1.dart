import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_textstyles.dart';

void main() {
  runApp(onBoard1());
}

class onBoard1 extends StatelessWidget {
  onBoard1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
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
      ),
    );
  }
}
