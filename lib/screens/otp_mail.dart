import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_fonts.dart';
import 'package:ui_task1/widgets/customized_text.dart';
import 'package:ui_task1/widgets/otp_frame.dart';
import '../core/app_assets.dart';
import '../core/app_colors.dart';

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
            const Text(
              "تأكيد الحساب",
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff3F4857),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomizedText(
                txt: "سيتم ارسال رمز التأكيد علي البريد الالكتروني",
                fontSize: 16,
                txtColor: AppColors.color3f4857,
                fontFamily: AppFonts.primaryFontFamily,
                fontWeight: FontWeight.normal),
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
                CustomizedText(
                    txt: "إعادة الإرسال",
                    txtAlign: TextAlign.center,
                    fontSize: 16,
                    txtColor: AppColors.blackColor,
                    fontFamily: AppFonts.secondryFontFamily,
                    fontWeight: FontWeight.normal),
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
