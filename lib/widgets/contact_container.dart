import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_fonts.dart';
import 'package:ui_task1/widgets/customized_text.dart';

class ContactContainer extends StatelessWidget {
  String iconPath;
  ContactContainer({required this.iconPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: 361,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomizedText(
                txt: "+966 123456789",
                fontSize: 16,
                txtColor: AppColors.color3f4857,
                fontFamily: AppFonts.thirdFontFamily,
                fontWeight: FontWeight.w500),
            SizedBox(
              width: 8,
            ),
            Image.asset(
              iconPath,
              width: 20,
              height: 20,
              color: AppColors.color797F8A,
            ),
          ],
        ),
      ),
    );
  }
}
