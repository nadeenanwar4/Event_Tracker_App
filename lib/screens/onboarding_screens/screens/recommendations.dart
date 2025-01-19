import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_textstyles.dart';
import 'package:ui_task1/screens/onboarding_screens/widgets/choose_card.dart';
import 'package:ui_task1/widgets/mainbutton.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.only(top: 60),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "إختر النشاطات التي تهمك",
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: TextStyles.primary24SemiBold3f4857,
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
            mainButton(
              btnText: "عرض الفعاليات",
              onTap: () {
                Navigator.pushNamed(context, "/signup");
              },
            ),
          ],
        ),
      ),
    ));
  }
}
