import 'package:flutter/material.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            CustomizedAppBar(
              screenHeading: "الاشعارات",
              //isSuffixicon: true,
              //isPrefixicon: true,
            ),
            //PageView(),
            //TabPageSelector(),
          ],
        ),
      ),
    );
  }
}
