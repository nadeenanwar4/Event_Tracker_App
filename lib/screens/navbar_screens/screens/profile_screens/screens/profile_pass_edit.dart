import 'package:flutter/material.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/widgets/mainbutton.dart';
import '../../../../../core/app_assets.dart';
import '../../../../../widgets/custom_text_form_field.dart';
import '../../../../../widgets/random_text.dart';

class ProfileEditPassScreen extends StatelessWidget {
  ProfileEditPassScreen({super.key});

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CustomizedAppBar(
              screenHeading: "تعديل كلمة المرور",
              isSuffixicon: true,
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFormFieldLabel(txt: "كلمة المرور القديمة"),
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
                SizedBox(
                  height: 24,
                ),
                TextFormFieldLabel(txt: "كلمة المرور الجديدة "),
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
                SizedBox(
                  height: 24,
                ),
                TextFormFieldLabel(txt: "اعد كتابة كلمة المرور"),
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
            SizedBox(
              height: 24,
            ),
            mainButton(
              btnText: "تأكيد",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
