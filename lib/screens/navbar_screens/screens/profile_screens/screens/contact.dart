import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_textstyles.dart';
import 'package:ui_task1/screens/navbar_screens/screens/profile_screens/widgets/contact_container.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/widgets/mainbutton.dart';
import '../../../../../widgets/custom_text_form_field.dart';
import '../../../../../widgets/random_text.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Text(
                "كيف يمكننا مساعدتك؟",
                style: TextStyles.primary24SemiBold0F1520,
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
              mainButton(
                btnText: "إرسال",
                onTap: () {},
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "تواصل معنا من خلال",
                style: TextStyles.primary16Bold3f4857,
              ),
              const SizedBox(
                height: 16,
              ),
              ContactContainer(iconPath: AppAssets.phoneIc),
              ContactContainer(iconPath: AppAssets.whatsappIc),
            ],
          ),
        ),
      ),
    );
  }
}
