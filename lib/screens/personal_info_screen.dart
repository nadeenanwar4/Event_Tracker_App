import 'package:flutter/material.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/widgets/mainButton.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/random_text.dart';

void main() {
  runApp(PersonalInfoScreen());
}

class PersonalInfoScreen extends StatelessWidget {
  PersonalInfoScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomizedAppBar(
                screenHeading: "البيانات الشخصية",
                isSuffixicon: true,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 24, 8, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormFieldLabel(txt: "الاسم"),
                    CustomTextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        hintTxt: "عبدالله عبدالمجيد"),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormFieldLabel(txt: "البريد الإلكتروني"),
                    CustomTextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        hintTxt: "username@gmail.com"),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormFieldLabel(txt: "رقم الجوال (إختياري)"),
                    CustomTextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        hintTxt: "+966 123 1234 123"),
                  ],
                ),
              ),
              mainButton(btnText: "تعديل البيانات"),
            ],
          ),
        ),
      ),
    );
  }
}
