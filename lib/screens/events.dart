import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/widgets/activity_card.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/widgets/fav_card.dart';

void main() {
  runApp(Events());
}

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.colorF8F8F8,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomizedAppBar(
                screenHeading: "الفعاليات",
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(8),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    ActivityCard(text: "كل الفعاليات"),
                    const SizedBox(
                      width: 8,
                    ),
                    ActivityCard(text: " المغامرات"),
                    const SizedBox(
                      width: 8,
                    ),
                    ActivityCard(text: " الرياضه"),
                    const SizedBox(
                      width: 8,
                    ),
                    ActivityCard(text: " الترفيه"),
                    const SizedBox(
                      width: 8,
                    ),
                    ActivityCard(text: " الاحتفالات"),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 48,
                        child: SearchBar(
                          backgroundColor:
                              WidgetStatePropertyAll(AppColors.whiteColor),
                          leading: Container(
                            width: 37,
                            height: 37,
                            decoration: BoxDecoration(
                              color: AppColors.color1A404D,
                              borderRadius: BorderRadius.circular(37),
                            ),
                            child: Icon(
                              Icons.search_outlined,
                              size: 16,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          hintText: "السبت  2 نوفمبر - الاثنين  4 نوفمبر",
                          hintStyle: WidgetStateProperty.all<TextStyle?>(
                            TextStyle(
                              fontSize: 12.0,
                              color: AppColors
                                  .color182335, // Change this to the appropriate color
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: [
                            Image.asset(
                              AppAssets.calenderIc,
                              width: 24,
                              height: 24,
                              color: AppColors.color3f4857,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.map_outlined,
                        size: 24,
                        color: AppColors.color3f4857,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    FavCard(
                      imgPath: AppAssets.motorImg,
                      aboveIconPath: AppAssets.heartIc,
                      head: "جمان كارتنج للترفيه المليء بالتشويق",
                      subHead: "مدينة الملك عبدالله الاقتصادية | الترفيه ",
                      belowIconPath: AppAssets.markerIc,
                      width: 361,
                      height: 261,
                      smallContwidth: 345,
                      smallContheight: 72,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    FavCard(
                      imgPath: AppAssets.desertImg,
                      aboveIconPath: AppAssets.heartIc,
                      head: "رحلة تخييم وسفاري في صحراء الرياض",
                      subHead: "الرياض | الترفيه ",
                      belowIconPath: AppAssets.markerIc,
                      width: 361,
                      height: 261,
                      smallContwidth: 345,
                      smallContheight: 72,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
