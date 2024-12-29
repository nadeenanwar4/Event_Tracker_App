import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_colors.dart';
import '../core/app_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  TextInputType? keyboardType;
  String hintTxt;
  Image? iconImg;

  //String? initValue;

  bool isObsecure;
  CustomTextFormField(
      {required this.controller,
      required this.keyboardType,
      required this.hintTxt,
      this.isObsecure = false,
      this.iconImg,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textAlign: TextAlign.end,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteColor,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintTxt,
        hintStyle: TextStyle(
          fontSize: 14,
          fontFamily: AppFonts.thirdFontFamily,
          fontWeight: FontWeight.normal,
          color: AppColors.colorA0A5AC,
        ),
        prefixIcon: iconImg,
        prefixIconColor: AppColors.colorA0A5AC,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.colorE8E9EB,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.colorE8E9EB,
          ),
        ),
      ),
    );
  }
}
