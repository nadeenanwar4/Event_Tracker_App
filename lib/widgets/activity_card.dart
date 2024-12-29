import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/widgets/random_text.dart';

class ActivityCard extends StatelessWidget {
  String text;
  ActivityCard({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.whiteColor,
      ),
      width: 105,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ActivityText(text: text),
          SizedBox(
            width: 8,
          ),
          Image.asset(AppAssets.activityIc),
        ],
      ),
    );
  }
}
