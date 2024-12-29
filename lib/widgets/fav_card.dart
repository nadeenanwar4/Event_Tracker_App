import 'package:flutter/material.dart';
import 'package:ui_task1/core/app_colors.dart';
import '../core/app_fonts.dart';

class FavCard extends StatelessWidget {
  String head;
  String subHead;
  String imgPath;
  String aboveIconPath;
  String belowIconPath;
  double width;
  double height;
  double smallContwidth;
  double smallContheight;
  FavCard(
      {required this.head,
      required this.subHead,
      required this.imgPath,
      required this.aboveIconPath,
      required this.belowIconPath,
      required this.width,
      required this.height,
      required this.smallContwidth,
      required this.smallContheight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      width: width,
      height: height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
                child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 31,
                  height: 31,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.whiteColor,
                  ),
                  child: Image.asset(
                    aboveIconPath,
                    width: 16,
                    height: 16,
                    color: AppColors.colorA0A5AC,
                  ),
                  // child: const Icon(
                  //   Icons.favorite_border_rounded,
                  //   color: AppColors.colorA0A5AC,
                  //   size: 16,
                  // ),
                ),
                Container(
                  width: 294,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          head,
                          style: TextStyle(
                            fontFamily: AppFonts.primaryFontFamily,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.color3f4857,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              belowIconPath,
                              width: 12,
                              height: 14,
                              //color: ,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              subHead,
                              style: TextStyle(
                                fontFamily: AppFonts.primaryFontFamily,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: AppColors.color797F8A,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
