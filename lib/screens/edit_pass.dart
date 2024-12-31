import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_fonts.dart';
import 'package:ui_task1/widgets/customized_text.dart';
import '../core/app_assets.dart';
import '../core/app_colors.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/mainButton.dart';
import '../widgets/random_text.dart';

void main() {
  runApp(ForgotPassScreen());
}

class ForgotPassScreen extends StatelessWidget {
  ForgotPassScreen({super.key});

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 64, 16, 0),
          child: Column(children: [
            const SizedBox(
              height: 32,
            ),
            const Text(
              "أدخل كلمة مرور جديدة",
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
                txt: "أدخل بريدك الإلكتروني لإرسال رمز التأكيد",
                fontSize: 16,
                txtColor: AppColors.color3f4857,
                fontFamily: AppFonts.primaryFontFamily,
                fontWeight: FontWeight.normal),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 24,
                ),
                TextFormFieldLabel(txt: "كلمة المرور"),
                CustomTextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  hintTxt: "Min 8 characters",
                  isObsecure: true,
                  iconImg: Image.asset(
                    AppAssets.passIc,
                    width: 16,
                    height: 16,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormFieldLabel(txt: "أعد إدخال كلمة المرور"),
                CustomTextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  hintTxt: "Min 8 characters",
                  isObsecure: true,
                  iconImg: Image.asset(
                    AppAssets.passIc,
                    width: 16,
                    height: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            mainButton(btnText: "تأكيد"),
          ]),
        ),
      ),
    );
  }
}
