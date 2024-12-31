import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_colors.dart';
import '../core/app_fonts.dart';

class ActivityText extends StatelessWidget {
  String text;
  ActivityText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.color182335,
        fontFamily: AppFonts.secondryFontFamily,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class TextFormFieldLabel extends StatelessWidget {
  String txt;
  TextFormFieldLabel({required this.txt, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(
        txt,
        //textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 14,
          fontFamily: AppFonts.primaryFontFamily,
          fontWeight: FontWeight.normal,
          color: AppColors.color3f4857,
        ),
      ),
    );
  }
}

//
