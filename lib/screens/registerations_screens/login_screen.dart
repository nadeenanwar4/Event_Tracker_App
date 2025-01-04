import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_textstyles.dart';
import 'package:ui_task1/widgets/custom_text_form_field.dart';
import 'package:ui_task1/widgets/mainbutton.dart';
import 'package:ui_task1/widgets/random_text.dart';

void main() {
  runApp(SignInScreen());
}

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 42, 16, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                //textDirection: TextDirection.rtl,
                children: [
                  Image.asset(
                    AppAssets.logoImg,
                    width: 100,
                    height: 40.77,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "!مغامراتك بانتظارك",
                    style: TextStyles.primary24SemiBold3f4857,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    width: 361,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.whiteColor,
                      border: Border.all(color: AppColors.colorE8E9EB),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "التسجيل بحساب جوجل",
                          textAlign: TextAlign.center,
                          style: TextStyles.primary16Bold797F8A,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          AppAssets.googleIc,
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Divider(
                          height: 44,
                          color: Colors.red, //AppColors.colorE8E9EB,
                          thickness: 10,
                          indent: 8,
                          endIndent: 8,
                        ),
                        Text(
                          "أو",
                          style: TextStyles.secondary14Normal3f4857,
                        ),
                        const Divider(
                          height: 44,
                          color: AppColors.colorE8E9EB,
                          thickness: 10,
                          indent: 8,
                          endIndent: 8,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFormFieldLabel(txt: "البريد الإلكتروني"),
                      CustomTextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          hintTxt: "ex: username@gmail.com"),
                      const SizedBox(
                        height: 16,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "هل نسيت كلمة المرور؟",
                          style: TextStyles.secondary12Normal3f4857,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  mainButton(btnText: "تسجيل الدخول"),
                  const SizedBox(
                    height: 58,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "إنشاء حساب",
                        style: TextStyles.primary14Normal3f4857,
                      ),
                      Text(
                        "هل لديك حساب؟",
                        style: TextStyles.primary14Normal3f4857,
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
