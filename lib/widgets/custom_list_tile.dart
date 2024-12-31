import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_colors.dart';

class CustomizedListTile extends StatelessWidget {
  String leadIconPath;
  String title;
  TextStyle titleTxtStyle;
  String subTitle;
  TextStyle? subTxtStyle;
  Widget? trailing;
  double radius;
  bool is3Lines;
  CustomizedListTile(
      {required this.title,
      required this.titleTxtStyle,
      this.subTitle = "",
      this.subTxtStyle,
      this.leadIconPath = "",
      this.trailing,
      this.radius = 0,
      this.is3Lines = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: ListTile(
          leading: leadIconPath.isNotEmpty
              ? Image.asset(
                  leadIconPath,
                  width: 20,
                  height: 20,
                  color: AppColors.colorA0A5AC,
                )
              : null,
          title: Text(title),
          titleTextStyle: titleTxtStyle,
          subtitle: subTitle.isNotEmpty ? Text(subTitle) : null,
          subtitleTextStyle: subTxtStyle,
          trailing: trailing,
          tileColor: AppColors.whiteColor,
          isThreeLine: is3Lines,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
              color: AppColors.whiteColor,
            ),
          ),
        ));
  }
}
