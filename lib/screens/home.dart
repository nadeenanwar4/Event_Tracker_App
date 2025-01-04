import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_textstyles.dart';
import 'package:ui_task1/widgets/activity_card.dart';
import 'package:ui_task1/widgets/fav_card.dart';

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
        backgroundColor: AppColors.colorF8F8F8,
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
                  color: AppColors.whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 24, 8, 8),
                    //column that contain both row of top bar and the search bar below them
                    child: Column(
                      children: [
                        // row that contains both headings and notification icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 46,
                              height: 46,
                              decoration: BoxDecoration(
                                color: AppColors.colorF8F8F8,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    AppAssets.notificationIc,
                                    width: 24,
                                    height: 24,
                                    color: AppColors.color3f4857,
                                  )),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "! مرحبا بك",
                                  style: TextStyles.primary16Bold182335,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  " إبحث عن مغامرتك الآن",
                                  style: TextStyles.primary16Normal797F8A,
                                ),
                              ],
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
                                filled: true,
                                fillColor: AppColors.colorF8F8F8,
                                suffixIcon: const Icon(
                                  Icons.search_outlined,
                                  size: 20,
                                  color: AppColors.color3f4857,
                                ),
                                hintText: " البحث عن الفعاليات",
                                hintStyle: TextStyles.secondary14NormalA0A5AC,
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
                title: Text(
                  "عرض المزيد",
                  style: TextStyles.secondary14Bold1A404D,
                ),
                trailing: Text(
                  "فعاليات الشهر الحالي",
                  style: TextStyles.secondary18Bold182335,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //textDirection: TextDirection.rtl,
                    children: [
                      FavCard(
                        imgPath: AppAssets.motorImg,
                        aboveIconPath: AppAssets.heartIc,
                        head: "جمان كارتنج للترفيه المليء بالتشويق",
                        subHead: "مدينة الملك عبدالله الاقتصادية | الترفيه ",
                        belowIconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                        smallContwidth: 294,
                        smallContheight: 72,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      FavCard(
                        imgPath: AppAssets.desertImg,
                        aboveIconPath: AppAssets.heartIc,
                        head: "رحلة تخييم وسفاري في صحراء الرياض",
                        subHead: "الرياض | الترفيه ",
                        belowIconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                        smallContwidth: 294,
                        smallContheight: 72,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      FavCard(
                        imgPath: AppAssets.motorImg,
                        aboveIconPath: AppAssets.heartIc,
                        head: "جمان كارتنج للترفيه المليء بالتشويق",
                        subHead: "مدينة الملك عبدالله الاقتصادية | الترفيه ",
                        belowIconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                        smallContwidth: 294,
                        smallContheight: 72,
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
                title: Text(
                  "عرض المزيد",
                  style: TextStyles.secondary14Bold1A404D,
                ),
                trailing: Text(
                  "أبرز الفعاليات",
                  style: TextStyles.secondary18Bold182335,
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FavCard(
                        imgPath: AppAssets.motorImg,
                        aboveIconPath: AppAssets.heartIc,
                        head: "جمان كارتنج للترفيه المليء بالتشويق",
                        subHead: "مدينة الملك عبدالله الاقتصادية | الترفيه ",
                        belowIconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                        smallContwidth: 294,
                        smallContheight: 72,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      FavCard(
                        imgPath: AppAssets.desertImg,
                        aboveIconPath: AppAssets.heartIc,
                        head: "رحلة تخييم وسفاري في صحراء الرياض",
                        subHead: "الرياض | الترفيه ",
                        belowIconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                        smallContwidth: 294,
                        smallContheight: 72,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      FavCard(
                        imgPath: AppAssets.motorImg,
                        aboveIconPath: AppAssets.heartIc,
                        head: "جمان كارتنج للترفيه المليء بالتشويق",
                        subHead: "مدينة الملك عبدالله الاقتصادية | الترفيه ",
                        belowIconPath: AppAssets.markerIc,
                        width: 310,
                        height: 256,
                        smallContwidth: 294,
                        smallContheight: 72,
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
