import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/widgets/customized_text.dart';

import '../core/app_fonts.dart';

class CustomizedAppBar extends StatelessWidget {
  String screenHeading;
  CustomizedAppBar({required this.screenHeading, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      height: 105,
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(bottom: 16),
      child: CustomizedText(
          txt: "التقويم",
          fontSize: 16,
          txtColor: AppColors.color3f4857,
          fontFamily: AppFonts.primaryFontFamily,
          fontWeight: FontWeight.bold),
    );
  }
}
