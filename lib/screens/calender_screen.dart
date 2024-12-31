import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_fonts.dart';
import 'package:ui_task1/widgets/claendar.dart';
import 'package:ui_task1/widgets/custom_app_bar.dart';
import 'package:ui_task1/widgets/fav_card.dart';

void main() {
  runApp(CalendarScreen());
}

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  bool isMonthView = true;

  void toggleCalendarView() {
    setState(() {
      isMonthView = !isMonthView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CustomizedAppBar(screenHeading: "التقويم"),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: AppColors.whiteColor,
                  //padding: EdgeInsets.all(16),
                  //height: isMonthView ? 389 : 174,
                  width: isMonthView ? 361 : 361,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (!isMonthView) toggleCalendarView();
                              },
                              child: Text(
                                "الشهر",
                                style: TextStyle(
                                  fontFamily: AppFonts.primaryFontFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: isMonthView
                                      ? AppColors.color007aff
                                      : AppColors.blackColor,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(139, 33),
                                  backgroundColor: AppColors.whiteColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    side: BorderSide(
                                      color: isMonthView
                                          ? AppColors.color007aff
                                          : AppColors.blackColor,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (isMonthView) toggleCalendarView();
                              },
                              child: Text(
                                "الاسبوع",
                                style: TextStyle(
                                  fontFamily: AppFonts.primaryFontFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: !isMonthView
                                      ? AppColors.color007aff
                                      : AppColors.blackColor,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(150, 33),
                                  backgroundColor: AppColors.whiteColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    side: BorderSide(
                                      color: !isMonthView
                                          ? AppColors.color007aff
                                          : AppColors.blackColor,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Calendar(isMonthView: isMonthView),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Text(
                              "فعاليات يوم (١٩ يناير ٢٠٢٤)",
                              style: TextStyle(
                                  fontFamily: AppFonts.primaryFontFamily,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.color3f4857),
                            ),
                          ),
                        ],
                      ),
                      FavCard(
                        head: "موسم الرياض ٢٠٢٤",
                        subHead: "لمدة اسبوعين  - ١٢ اكتوبر٢٠٢٤",
                        imgPath: AppAssets.festivalImg,
                        aboveIconPath: AppAssets.heartIc,
                        belowIconPath: AppAssets.calenderIc,
                        width: 361,
                        height: 285,
                        smallContwidth: 345,
                        smallContheight: 70,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      FavCard(
                        head: "لحظات العلا",
                        subHead: "لمدة اسبوعين  - ١٢ اكتوبر٢٠٢٤",
                        imgPath: AppAssets.desertImg,
                        aboveIconPath: AppAssets.heartIc,
                        belowIconPath: AppAssets.calenderIc,
                        width: 361,
                        height: 285,
                        smallContwidth: 345,
                        smallContheight: 70,
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
