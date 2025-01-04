import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_textstyles.dart';
import '../../core/app_colors.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/mainbutton.dart';
import '../../widgets/random_text.dart';

void main() {
  runApp(ForgotPassScreen());
}

class ForgotPassScreen extends StatelessWidget {
  ForgotPassScreen({super.key});

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
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
              height: 32,
            ),
            Text("تأكيد الحساب", style: TextStyles.primary24SemiBold3f4857),
            const SizedBox(
              height: 16,
            ),
            Text(
              "سيتم ارسال رمز التأكيد علي البريد الالكتروني",
              style: TextStyles.primary16Normal3f4857,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 24,
                ),
                TextFormFieldLabel(txt: "البريد الإلكتروني"),
                CustomTextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    hintTxt: "ex: username@gmail.com"),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            mainButton(btnText: "إرسال"),
          ]),
        ),
      ),
    );
  }
}
