import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_fonts.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/widgets/custom_text_form_field.dart';
import 'package:ui_task1/widgets/customized_text.dart';
import 'package:ui_task1/widgets/mainButton.dart';

void main() {
  runApp(RatingScreen());
}

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double rate = 0;
  final textController = TextEditingController();

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
                screenHeading: "تقييم التطبيق",
                isSuffixicon: true,
              ),
              const SizedBox(
                height: 32,
              ),
              CustomizedText(
                  txt: "ما هو تقييمك لخدماتنا؟",
                  fontSize: 16,
                  txtColor: AppColors.color182335,
                  fontFamily: AppFonts.secondryFontFamily,
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 16,
              ),
              PannableRatingBar(
                rate: rate,
                items: List.generate(
                    5,
                    (index) => RatingWidget(
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              AppAssets.starIc,
                              width: 32,
                              height: 32,
                              color: AppColors.colorA0A5AC,
                            ),
                          ),
                          selectedColor: Colors.yellow,
                          //unSelectedColor: Colors.grey,
                        )),
                onChanged: (value) {
                  setState(() {
                    rate = value;
                  });
                },
              ),
              const SizedBox(
                height: 40,
              ),
              CustomizedText(
                  txt: "أكتب تعليق",
                  fontSize: 16,
                  txtColor: AppColors.color182335,
                  fontFamily: AppFonts.secondryFontFamily,
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 12,
              ),
              CustomTextFormField(
                controller: textController,
                keyboardType: TextInputType.text,
                hintTxt: "اكتب هنا",
                maxLines: 6,
              ),
              const SizedBox(
                height: 16,
              ),
              mainButton(btnText: "إرسال")
            ],
          ),
        ),
      ),
    );
  }
}
