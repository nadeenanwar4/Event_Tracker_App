import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/widgets/customized_text.dart';

import '../core/app_fonts.dart';

class CustomizedAppBar extends StatelessWidget {
  String screenHeading;
  bool? isPrefixicon = false;
  bool? isSuffixicon = false;
  CustomizedAppBar(
      {required this.screenHeading,
      this.isPrefixicon = false,
      this.isSuffixicon = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      height: 105,
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: (isPrefixicon! || isSuffixicon!) == true
            ? const EdgeInsets.only(bottom: 8)
            : const EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: (isPrefixicon! || isSuffixicon!) == true
              ? MainAxisAlignment.end
              : MainAxisAlignment.center,
          children: [
            if (isPrefixicon == true)
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  IconButton(
                      padding: EdgeInsets.only(right: 52),
                      onPressed: () {},
                      icon: Icon(
                        Icons.check_rounded,
                        size: 16,
                        color: AppColors.color007aff,
                      )),
                  CustomizedText(
                      txt: "تمييز كمقروء",
                      fontSize: 14,
                      txtColor: AppColors.color007aff,
                      fontFamily: AppFonts.secondryFontFamily,
                      fontWeight: FontWeight.normal),
                ],
              ),

            CustomizedText(
              txt: screenHeading,
              fontSize: 16,
              txtColor: AppColors.color3f4857,
              fontFamily: AppFonts.primaryFontFamily,
              fontWeight: FontWeight.bold,
              //txtAlign: TextAlign.center,
            ),
            // const SizedBox(
            //   width: 90,
            // ),

            if (isSuffixicon == true)
              IconButton(
                  padding: EdgeInsets.fromLTRB(110, 0, 8, 0),
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 24,
                    color: AppColors.color797F8A,
                  ))
          ],
        ),
      ),
    );
  }
}
