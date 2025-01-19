import 'package:flutter/material.dart';

class mainButton extends StatelessWidget {
  String btnText;
  VoidCallback onTap;

  mainButton({required this.onTap, required this.btnText, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(361, 60),
        backgroundColor: const Color(0xff1A404D),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        btnText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    );
  }
}
