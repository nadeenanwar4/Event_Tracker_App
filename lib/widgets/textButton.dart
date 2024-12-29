import 'package:flutter/material.dart';

class textButton extends StatelessWidget {
  String btnText;
  Color btnColor;
  double fontSize;
  String fontFamily;
  FontWeight btnTextWeight;
  TextDecoration? btnTextDecoration;

  textButton(
      {required this.btnText,
      required this.btnColor,
      required this.fontSize,
      required this.fontFamily,
      required this.btnTextWeight,
      this.btnTextDecoration,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          btnText,
          style: TextStyle(
            color: btnColor,
            fontSize: fontSize,
            fontWeight: btnTextWeight,
            fontFamily: fontFamily,
            decoration: btnTextDecoration,
          ),
        ));
  }
}
