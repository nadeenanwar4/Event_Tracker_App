import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/widgets/choose_card.dart';
import 'package:ui_task1/widgets/mainButton.dart';

void main() {
  runApp(Recommendations());
}

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(top: 60),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "إختر النشاطات التي تهمك",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  fontFamily: "Rubik", //AppAssets.primaryFontFamily ??,
                  color: AppColors.color3f4857,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ChooseCard(
                        iconPath: AppAssets.campIc,
                        iconText: "التخييم والسفاري",
                      ),
                      ChooseCard(
                        iconPath: AppAssets.partyIc,
                        iconText: " الحفلات",
                      ),
                      ChooseCard(
                        iconPath: AppAssets.beachIc,
                        iconText: "الشواطيء",
                      ),
                      ChooseCard(
                        iconPath: AppAssets.sportsIc,
                        iconText: " الرياضة",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ChooseCard(
                        iconPath: AppAssets.horseRideIc,
                        iconText: " ركوب الخيل",
                      ),
                      ChooseCard(
                        iconPath: AppAssets.entertainIc,
                        iconText: "الترفيه",
                      ),
                      ChooseCard(
                        iconPath: AppAssets.sportsIc,
                        iconText: " الرياضة",
                      ),
                      ChooseCard(
                        iconPath: AppAssets.sportsIc,
                        iconText: " الرياضة",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              mainButton(btnText: "عرض الفعاليات"),
            ],
          ),
        ),
      )),
    );
  }
}
