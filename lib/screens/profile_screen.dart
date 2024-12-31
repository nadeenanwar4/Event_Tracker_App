import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_fonts.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/widgets/custom_list_tile.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  List<String> leadIconsPathes() {
    return [
      AppAssets.profileIc,
      AppAssets.heartIc,
      AppAssets.followIc,
      AppAssets.envelopeIc,
      AppAssets.cloudShareIc,
      AppAssets.starIc,
      AppAssets.unlockIc,
      AppAssets.globeIc,
      AppAssets.signOutIc
    ];
  }

  List<String> titleStrings() {
    return [
      "البيانات الشخصية",
      "المفضلة",
      "فعاليات المتابعين",
      "تواصل معنا",
      "مشاركة التطبيق",
      "تقييم التطبيق",
      "تعديل كلمة المرور",
      "اللغة",
      "تسجيل الخروج"
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.colorF8F8F8,
        body: Column(
          children: [
            CustomizedAppBar(
              screenHeading: "حسابي",
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 2, 16, 2),
                    child: CustomizedListTile(
                      title: titleStrings()[index],
                      titleTxtStyle: TextStyle(
                          fontFamily: AppFonts.primaryFontFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.color3f4857),
                      leadIconPath: leadIconsPathes()[index],
                      radius: 4,
                      trailing: index == 7
                          ? SizedBox(
                              width: 80,
                              height: 24,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 34,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.color41606B,
                                    ),
                                    child: Text(
                                      "AR",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: AppFonts.thirdFontFamily,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    width: 34,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.colorE8E9EB,
                                    ),
                                    child: Text(
                                      "EN",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: AppFonts.thirdFontFamily,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: AppColors.color182335,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Icon(Icons.keyboard_arrow_left_rounded),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
