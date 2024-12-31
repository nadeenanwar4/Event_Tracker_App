import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_fonts.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/widgets/custom_list_tile.dart';
import 'package:ui_task1/widgets/customized_text.dart';

void main() {
  runApp(NotificationScreen());
}

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.colorF8F8F8,
        body: Column(
          children: [
            CustomizedAppBar(
              screenHeading: "الاشعارات",
              isSuffixicon: true,
              isPrefixicon: true,
            ),
            // SizedBox(
            //   height: 16,
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                padding: EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: CustomizedListTile(
                      title: "فعالية جديدة !",
                      titleTxtStyle: TextStyle(
                          fontSize: 16,
                          color: AppColors.color3f4857,
                          fontFamily: AppFonts.primaryFontFamily,
                          fontWeight: FontWeight.bold),
                      subTitle:
                          "تم إضافة فعالية جديدة انت مهتم بها من قبل شركة سفاري الق نظرة عليها الآن",
                      subTxtStyle: TextStyle(
                          fontSize: 14,
                          color: AppColors.color797F8A,
                          fontFamily: AppFonts.primaryFontFamily,
                          fontWeight: FontWeight.normal),
                      is3Lines: true,
                      radius: 8,
                    ),
                  );

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 4.0),
                  //   child: Directionality(
                  //     textDirection: TextDirection.rtl,
                  //     child: ListTile(
                  //       //minVerticalPadding: 20,
                  //       isThreeLine: true,
                  //       title: Padding(
                  //         padding: const EdgeInsets.only(bottom: 4.0),
                  //         child: CustomizedText(
                  //             txt: "فعالية جديدة !",
                  //             fontSize: 16,
                  //             txtColor: AppColors.color3f4857,
                  //             fontFamily: AppFonts.primaryFontFamily,
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //       subtitle: CustomizedText(
                  //           txt:
                  //               "تم إضافة فعالية جديدة انت مهتم بها من قبل شركة سفاري الق نظرة عليها الآن",
                  //           fontSize: 14,
                  //           txtColor: AppColors.color797F8A,
                  //           fontFamily: AppFonts.primaryFontFamily,
                  //           fontWeight: FontWeight.normal),
                  //       tileColor: AppColors.whiteColor,
                  //       shape: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(8),
                  //         borderSide: BorderSide(
                  //           color: AppColors.whiteColor,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
