import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_colors.dart';

class OtpFrame extends StatelessWidget {
  const OtpFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.colorA0A5AC,
          )),
    );
  }
}
