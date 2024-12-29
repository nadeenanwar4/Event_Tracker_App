import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/widgets/customized_text.dart';

import '../core/app_fonts.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(170),
          child: AppBar(
            backgroundColor: AppColors.whiteColor,
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.circle_notifications_rounded,
                            color: AppColors.blackColor,
                          )),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomizedText(
                              txt: "! مرحبا بك",
                              fontSize: 16,
                              txtColor: AppColors.color182335,
                              fontFamily: AppFonts.primaryFontFamily,
                              fontWeight: FontWeight.bold),
                          CustomizedText(
                              txt: " إبحث عن مغامرتك الآن",
                              fontSize: 16,
                              txtColor: AppColors.color797F8A,
                              fontFamily: AppFonts.primaryFontFamily,
                              fontWeight: FontWeight.normal),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.search_outlined,
                          size: 20,
                          color: AppColors.color3f4857,
                        ),
                        hintText: " البحث عن الفعاليات",
                        hintStyle: TextStyle(
                          fontFamily: AppFonts.secondryFontFamily,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: AppColors.colorA0A5AC,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


//======================== custom app bar =================


//import 'package:flutter/material.dart';
// import 'package:ui_task1/core/app_assets.dart';
// import 'package:ui_task1/core/app_colors.dart';
// import 'package:ui_task1/widgets/customized_text.dart';

// class CustomizedAppBar extends StatelessWidget {
//   String screenHeading;
//   CustomizedAppBar({required this.screenHeading, super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(105),
//         child: AppBar(
//           backgroundColor: AppColors.whiteColor,
//           flexibleSpace: Container(
//             height: 105,
//             alignment: Alignment.bottomCenter,
//             padding: EdgeInsets.only(bottom: 16),
//             child: CustomizedText(
//                 txt: "التقويم",
//                 fontSize: 16,
//                 txtColor: AppColors.color3f4857,
//                 fontFamily: AppAssets.primaryFontFamily,
//                 fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     );
//   }
// }
