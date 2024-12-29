import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/widgets/activity_card.dart';
import 'package:ui_task1/widgets/customized_text.dart';
import 'package:ui_task1/widgets/fav_card.dart';

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
        //column of whole screen
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // top search card

              Container(
                width: double.infinity,
                height: 170,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 24, 8, 8),

                    //column that contain both row of top bar and the search bar below them

                    child: Column(
                      children: [
                        // row that contains both headings and notification icon

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.circle_notifications_rounded,
                                  color: AppColors.searchBarColor,
                                  size: 46,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),

                              // column that contain the 2 headings

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomizedText(
                                      txt: "! مرحبا بك",
                                      fontSize: 16,
                                      txtColor: AppColors.color182335,
                                      fontFamily: AppFonts.primaryFontFamily,
                                      fontWeight: FontWeight.bold),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomizedText(
                                      txt: " إبحث عن مغامرتك الآن",
                                      fontSize: 16,
                                      txtColor: AppColors.color797F8A,
                                      fontFamily: AppFonts.primaryFontFamily,
                                      fontWeight: FontWeight.normal),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: 361,
                          height: 48,
                          child: TextField(
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                fillColor: AppColors.searchBarColor,
                                suffixIcon: const Icon(
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
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: const BorderSide(
                                    color: AppColors.searchBarBorderColor,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                    // end of search bar column
                  ),
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(8),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
              ListTile(
                leading: const Icon(
                  Icons.keyboard_arrow_left_rounded,
                  color: AppColors.color1A404D,
                  size: 20,
                ),
                title: Transform.translate(
                  offset: Offset(-24, 0),
                  child: CustomizedText(
                    txt: "عرض المزيد",
                    fontFamily: AppFonts.secondryFontFamily,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    txtColor: AppColors.color1A404D,
                  ),
                ),
                trailing: CustomizedText(
                  txt: "فعاليات الشهر الحالي",
                  fontFamily: AppFonts.secondryFontFamily,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  txtColor: AppColors.color182335,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FavCard(
                        imgPath: AppAssets.motorImg,
                        head: "جمان كارتنج للترفيه المليء بالتشويق",
                        subHead: "مدينة الملك عبدالله الاقتصادية | الترفيه ",
                        iconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                      ),
                      FavCard(
                        imgPath: AppAssets.desertImg,
                        head: "رحلة تخييم وسفاري في صحراء الرياض",
                        subHead: "الرياض | الترفيه ",
                        iconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                      ),
                      FavCard(
                        imgPath: AppAssets.motorImg,
                        head: "جمان كارتنج للترفيه المليء بالتشويق",
                        subHead: "مدينة الملك عبدالله الاقتصادية | الترفيه ",
                        iconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ListTile(
                leading: const Icon(
                  Icons.keyboard_arrow_left_rounded,
                  color: AppColors.color1A404D,
                  size: 20,
                ),
                title: Transform.translate(
                  offset: Offset(-24, 0),
                  child: CustomizedText(
                    txt: "عرض المزيد",
                    fontFamily: AppFonts.secondryFontFamily,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    txtColor: AppColors.color1A404D,
                  ),
                ),
                trailing: CustomizedText(
                  txt: "أبرز الفعاليات",
                  fontFamily: AppFonts.secondryFontFamily,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  txtColor: AppColors.color182335,
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FavCard(
                        imgPath: AppAssets.motorImg,
                        head: "جمان كارتنج للترفيه المليء بالتشويق",
                        subHead: "مدينة الملك عبدالله الاقتصادية | الترفيه ",
                        iconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                      ),
                      FavCard(
                        imgPath: AppAssets.desertImg,
                        head: "رحلة تخييم وسفاري في صحراء الرياض",
                        subHead: "الرياض | الترفيه ",
                        iconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                      ),
                      FavCard(
                        imgPath: AppAssets.motorImg,
                        head: "جمان كارتنج للترفيه المليء بالتشويق",
                        subHead: "مدينة الملك عبدالله الاقتصادية | الترفيه ",
                        iconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                      ),
                    ],
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
