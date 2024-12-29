import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ui_task1/core/app_assets.dart';
import 'package:ui_task1/core/app_colors.dart';

import '../core/app_fonts.dart';

class Calendar extends StatelessWidget {
  bool isMonthView;
  Calendar({required this.isMonthView, super.key});

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime.utc(2010, 1, 1),
      lastDay: DateTime.utc(2030, 1, 1),
      calendarFormat: isMonthView ? CalendarFormat.month : CalendarFormat.week,
      headerVisible: isMonthView ? true : false,
      rowHeight: isMonthView ? 45 : 60,
      calendarStyle: CalendarStyle(
        todayDecoration: isMonthView
            ? BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.color1A404D,
              )
            : BoxDecoration(),
        defaultDecoration: isMonthView
            ? BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.colorE8ECED,
              )
            : BoxDecoration(),
        weekendDecoration: isMonthView
            ? BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.colorE8ECED,
              )
            : BoxDecoration(),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: AppColors.blackColor),
        weekendStyle: TextStyle(color: AppColors.blackColor),
      ),
      headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(
              fontSize: 16,
              fontFamily: AppFonts.primaryFontFamily,
              fontWeight: FontWeight.normal,
              color: AppColors.color10272F)),
    );
  }
}
