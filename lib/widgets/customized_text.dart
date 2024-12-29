import 'package:flutter/material.dart';

class CustomizedText extends StatelessWidget {
  String txt;
  double fontSize;
  String fontFamily;
  Color txtColor;
  FontWeight fontWeight;
  TextAlign? txtAlign;
  CustomizedText(
      {required this.txt,
      required this.fontSize,
      required this.txtColor,
      required this.fontFamily,
      required this.fontWeight,
      this.txtAlign,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: txtAlign,
      style: TextStyle(
        color: txtColor,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
