import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';
import 'package:ui_task1/core/app_fonts.dart';
import 'package:ui_task1/screens/navbar_screens/screens/calender_screen.dart';
import 'package:ui_task1/screens/navbar_screens/screens/events.dart';
import 'package:ui_task1/screens/navbar_screens/screens/home.dart';
import 'package:ui_task1/screens/navbar_screens/screens/profile_screens/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  List<Widget> buildScreens() {
    return [Home(), CalendarScreen(), Events(), Profile()];
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(AppAssets.homeIc),
        iconSize: 24,
        title: "الرئيسية",
        textStyle: TextStyle(
          fontSize: 14,
          fontFamily: AppFonts.secondryFontFamily,
          fontWeight: FontWeight.bold,
        ),
        activeColorPrimary: AppColors.color1A404D,
        activeColorSecondary: AppColors.whiteColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(AppAssets.calendarNavBarIc),
        iconSize: 24,
        title: "التقويم",
        textStyle: TextStyle(
          fontSize: 14,
          fontFamily: AppFonts.secondryFontFamily,
          fontWeight: FontWeight.bold,
        ),
        activeColorPrimary: AppColors.color1A404D,
        activeColorSecondary: AppColors.whiteColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(AppAssets.eventsIc),
        iconSize: 24,
        title: "الفعاليات",
        textStyle: TextStyle(
          fontSize: 14,
          fontFamily: AppFonts.secondryFontFamily,
          fontWeight: FontWeight.bold,
        ),
        activeColorPrimary: AppColors.color1A404D,
        activeColorSecondary: AppColors.whiteColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(AppAssets.userIc),
        iconSize: 24,
        title: "حسابي",
        textStyle: TextStyle(
          fontSize: 14,
          fontFamily: AppFonts.secondryFontFamily,
          fontWeight: FontWeight.bold,
        ),
        activeColorPrimary: AppColors.color1A404D,
        activeColorSecondary: AppColors.whiteColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: PersistentTabView(
        context,
        screens: buildScreens(),
        items: navBarItems(),
        controller: controller,
        navBarHeight: 90,
        navBarStyle: NavBarStyle.style7,
      ),
    );
  }
}
