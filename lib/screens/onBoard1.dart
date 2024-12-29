import 'package:flutter/material.dart';

void main() {
  runApp(onBoard1());
}

class onBoard1 extends StatelessWidget {
  onBoard1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/logo.png",
                width: 159.97,
                height: 65.23,
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: 200,
                height: 28,
                child: const Text(
                  "!مغامراتك بانتظارك",
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3F4857),
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
