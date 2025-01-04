import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_textstyles.dart';
import 'package:ui_task1/widgets/otp_frame.dart';
import '../../core/app_assets.dart';
import '../../core/app_colors.dart';

void main() {
  runApp(OtpScreen());
}

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 16, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 40,
                    color: AppColors.color3f4857,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 48,
            ),
            Text("تأكيد الحساب", style: TextStyles.primary24SemiBold3f4857),
            const SizedBox(
              height: 16,
            ),
            Text("سيتم ارسال رمز التأكيد علي رقم الجوال",
                style: TextStyles.primary16Normal3f4857),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpFrame(),
                  OtpFrame(),
                  OtpFrame(),
                  OtpFrame(),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("إعادة الإرسال",
                    textAlign: TextAlign.center,
                    style: TextStyles.secondary16NormalBlack),
                const SizedBox(
                  width: 8,
                ),
                Image.asset(
                  AppAssets.reloadIc,
                  width: 16,
                  height: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
