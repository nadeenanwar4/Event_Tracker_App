import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_textstyles.dart';
import '../../../core/app_assets.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../../widgets/mainbutton.dart';
import '../../../widgets/random_text.dart';

void main() {
  runApp(EditPassScreen());
}

class EditPassScreen extends StatelessWidget {
  EditPassScreen({super.key});

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
            Text("أدخل كلمة مرور جديدة",
                style: TextStyles.primary24SemiBold3f4857),
            const SizedBox(
              height: 16,
            ),
            Text(
              "أدخل بريدك الإلكتروني لإرسال رمز التأكيد",
              style: TextStyles.primary16Normal3f4857,
            ),
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
            mainButton(
              btnText: "تأكيد",
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
            ),
          ]),
        ),
      ),
    );
  }
}
