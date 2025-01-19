import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/widgets/random_text.dart';

class ActivityCard extends StatefulWidget {
  String text;
  ActivityCard({required this.text, super.key});

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  bool isTabbed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTabbed = !isTabbed;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isTabbed ? AppColors.color1A404D : AppColors.whiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //textDirection: TextDirection.rtl,
            children: [
              ActivityText(
                text: widget.text,
                txtColor:
                    isTabbed ? AppColors.whiteColor : AppColors.color182335,
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset(
                AppAssets.activityIc,
                color: isTabbed ? AppColors.whiteColor : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
