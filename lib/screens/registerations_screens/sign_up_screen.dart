import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_textstyles.dart';
import 'package:ui_task1/widgets/custom_text_form_field.dart';
import 'package:ui_task1/widgets/mainbutton.dart';
import 'package:ui_task1/widgets/random_text.dart';

void main() {
  runApp(SignUpScreen());
}

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //     dividerTheme: const DividerThemeData(
      //   space: 44,
      //   color: AppColors.colorE8E9EB,
      //   thickness: 20,
      //   indent: 8,
      //   endIndent: 8,
      // )),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(85, 48, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.logoImg,
                      width: 100,
                      height: 40.77,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 40,
                        color: AppColors.color3f4857,
                      ),
                      padding: EdgeInsets.only(left: 64),
                    )
                  ],
                ),
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

              // ListTile(

              //   title: CustomizedText(
              //       txt: "التسجيل بحساب جوجل",
              //       txtAlign: TextAlign.center,
              //       fontSize: 16,
              //       txtColor: AppColors.color797F8A,
              //       fontFamily: AppAssets.primaryFontFamily,
              //       fontWeight: FontWeight.bold),
              //   trailing: Image.asset(
              //     AppAssets.googleIc,
              //     width: 24,
              //     height: 24,
              //   ),
              //   shape: OutlineInputBorder(
              //       borderSide: BorderSide(
              //         color: AppColors.colorE8E9EB,
              //       ),
              //       borderRadius: BorderRadius.circular(12)),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
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
                  TextFormFieldLabel(txt: "الاسم"),
                  CustomTextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      hintTxt: "john Doe"),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormFieldLabel(txt: "البريد الإلكتروني"),
                  CustomTextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      hintTxt: "ex: username@gmail.com"),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormFieldLabel(txt: "رقم الجوال (إختياري)"),
                  CustomTextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      hintTxt: "Ex: +966 123 1234 123"),
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
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              mainButton(btnText: "إنشاء حساب"),
              const SizedBox(
                height: 78,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "تسجيل الدخول",
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
