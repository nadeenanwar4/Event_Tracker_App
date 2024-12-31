import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_fonts.dart';
import 'package:ui_task1/widgets/contact_container.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/widgets/customized_text.dart';
import 'package:ui_task1/widgets/mainButton.dart';

import '../widgets/custom_text_form_field.dart';
import '../widgets/random_text.dart';

void main() {
  runApp(ContactScreen());
}

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                CustomizedAppBar(
                  screenHeading: "تواصل معنا",
                  isSuffixicon: true,
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomizedText(
                  txt: "كيف يمكننا مساعدتك؟",
                  fontSize: 24,
                  txtColor: AppColors.color0F1520,
                  fontFamily: AppFonts.primaryFontFamily,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormFieldLabel(txt: "رسالتك"),
                    CustomTextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        hintTxt: "اكتب هنا"),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldLabel(txt: "الاستفسار او الشكوي"),
                    CustomTextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      hintTxt: "اكتب هنا",
                      maxLines: 4,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                mainButton(btnText: "إرسال"),
                const SizedBox(
                  height: 32,
                ),
                CustomizedText(
                    txt: "تواصل معنا من خلال",
                    fontSize: 16,
                    txtColor: AppColors.color3f4857,
                    fontFamily: AppFonts.primaryFontFamily,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 16,
                ),
                ContactContainer(iconPath: AppAssets.phoneIc),
                ContactContainer(iconPath: AppAssets.whatsappIc),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
