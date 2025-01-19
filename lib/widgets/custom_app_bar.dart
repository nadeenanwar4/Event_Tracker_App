import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_textstyles.dart';

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
      width: double.infinity,
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
                  Text(
                    "تمييز كمقروء",
                    style: TextStyles.secondary14Normal007aff,
                  ),
                ],
              ),
            Text(
              screenHeading,
              style: TextStyles.primary16Bold3f4857,
            ),
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
