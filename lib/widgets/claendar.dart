import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ui_task1/core/app_colors.dart';
import '../core/app_fonts.dart';

class Calendar extends StatefulWidget {
  bool isMonthView;
  Calendar({required this.isMonthView, super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return widget.isMonthView
        ? TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2010, 1, 1),
            lastDay: DateTime.utc(2030, 1, 1),
            calendarFormat: CalendarFormat.month,
            headerVisible: true,
            rowHeight: 45,
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.color1A404D,
              ),
              defaultDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.colorE8ECED,
              ),
              weekendDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.colorE8ECED,
              ),
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
          )
        : EasyTheme(
            data: EasyTheme.of(context).copyWith(
                dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.color41606B;
              }
              return AppColors.whiteColor;
            })),
            child: EasyDateTimeLinePicker(
              firstDate: DateTime.utc(2010, 1, 1),
              lastDate: DateTime.utc(2030, 1, 1),
              focusedDate: selectedDate,
              onDateChange: (date) {
                setState(() {
                  selectedDate = date;
                });
              },
              headerOptions: HeaderOptions(headerType: HeaderType.none),
              selectionMode: SelectionMode.autoCenter(),
            ),
          );
  }
}
