import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/screens/navbar_screens/widgets/fav_card.dart';

class AudienceScreen extends StatelessWidget {
  const AudienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomizedAppBar(
              screenHeading: "فعاليات المتابعين",
              isSuffixicon: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  FavCard(
                    head: "رحلة تخييم وسفاري في صحراء الرياض",
                    subHead: "لمدة اسبوعين  - ١٢ اكتوبر٢٠٢٤",
                    imgPath: AppAssets.desertImg,
                    aboveIconPath: AppAssets.heartIc,
                    belowIconPath: AppAssets.calenderIc,
                    width: 361,
                    height: 285,
                    smallContheight: 70,
                    smallContwidth: 345,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  FavCard(
                    head: "رحلة تخييم وسفاري في صحراء الرياض",
                    subHead: "لمدة اسبوعين  - ١٢ اكتوبر٢٠٢٤",
                    imgPath: AppAssets.desertImg,
                    aboveIconPath: AppAssets.heartIc,
                    belowIconPath: AppAssets.calenderIc,
                    width: 361,
                    height: 285,
                    smallContheight: 70,
                    smallContwidth: 345,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  FavCard(
                    head: "رحلة تخييم وسفاري في صحراء الرياض",
                    subHead: "لمدة اسبوعين  - ١٢ اكتوبر٢٠٢٤",
                    imgPath: AppAssets.desertImg,
                    aboveIconPath: AppAssets.heartIc,
                    belowIconPath: AppAssets.calenderIc,
                    width: 361,
                    height: 285,
                    smallContheight: 70,
                    smallContwidth: 345,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
