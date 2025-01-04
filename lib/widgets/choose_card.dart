import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_colors.dart';
import '../core/app_fonts.dart';

class ChooseCard extends StatefulWidget {
  String iconPath;
  String iconText;
  ChooseCard({required this.iconPath, required this.iconText, super.key});

  @override
  State<ChooseCard> createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final Color imageColor =
        isChecked ? AppColors.blackColor : AppColors.chooseCardElementColor;
    final Color txtColor =
        isChecked ? AppColors.blackColor : AppColors.chooseCardElementColor;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: AppColors.whiteColor,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: imageColor,
          ),
        ),
        child: SizedBox(
          width: 171,
          height: 125,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        widget.iconPath,
                        width: 48,
                        height: 48,
                        color: imageColor,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        widget.iconText,
                        style: TextStyle(
                            fontSize: 16,
                            color: txtColor,
                            fontFamily: AppFonts.primaryFontFamily,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    activeColor: AppColors.color007aff,
                    checkColor: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    side: BorderSide(color: AppColors.colorA0A5AC),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
