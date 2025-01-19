import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/screens/navbar_screens/widgets/fav_card.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomizedAppBar(
              screenHeading: "المفضلة",
              isSuffixicon: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  FavCard(
                    head: "رحلة تخييم وسفاري في صحراء الرياض",
                    subHead: "١٢ اكتوبر ٢٠٢٤",
                    imgPath: AppAssets.desertImg,
                    aboveIconPath: AppAssets.trashIc,
                    belowIconPath: AppAssets.calenderIc,
                    width: 361,
                    height: 237,
                    smallContheight: 70,
                    smallContwidth: 329,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  FavCard(
                    head: "رحلة تخييم وسفاري في صحراء الرياض",
                    subHead: "١٢ اكتوبر ٢٠٢٤",
                    imgPath: AppAssets.desertImg,
                    aboveIconPath: AppAssets.trashIc,
                    belowIconPath: AppAssets.calenderIc,
                    width: 361,
                    height: 237,
                    smallContheight: 70,
                    smallContwidth: 329,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  FavCard(
                    head: "رحلة تخييم وسفاري في صحراء الرياض",
                    subHead: "١٢ اكتوبر ٢٠٢٤",
                    imgPath: AppAssets.desertImg,
                    aboveIconPath: AppAssets.trashIc,
                    belowIconPath: AppAssets.calenderIc,
                    width: 361,
                    height: 237,
                    smallContheight: 70,
                    smallContwidth: 329,
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
