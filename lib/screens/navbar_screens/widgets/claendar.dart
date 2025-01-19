import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ui_task1/core/app_colors.dart';
import '../../../core/app_fonts.dart';

class Calendar extends StatefulWidget {
  bool isMonthView;
  Calendar({required this.isMonthView, super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late DateTime focusedDay;
  late DateTime selectedDay;
  late Map<DateTime, List<String>> events;

  @override
  void initState() {
    super.initState();
    focusedDay = DateTime.now();
    selectedDay = DateTime.now();
    events = {
      DateTime(2025, 1, 20): ["event 1", "event 2"],
      DateTime(2025, 1, 22): ["event 1"],
      DateTime(2025, 1, 26): ["event 1", "event 2", "event 3", "event 4"],
    };
  }

  List<String> getDayEvents(DateTime day) {
    return events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return widget.isMonthView
        ? TableCalendar(
            focusedDay: focusedDay,
            firstDay: DateTime.utc(2010, 1, 1),
            lastDay: DateTime.utc(2030, 1, 1),
            calendarFormat: CalendarFormat.month,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                selectedDay = selectedDay;
                focusedDay = focusedDay;
              });
            },
            eventLoader: getDayEvents,
            headerVisible: true,
            rowHeight: 45,
            calendarStyle: CalendarStyle(
              cellAlignment: Alignment.topLeft,
              markersAlignment: Alignment.bottomRight,
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
            calendarBuilders:
                CalendarBuilders(markerBuilder: (context, day, events) {
              final matchedEvents =
                  this.events[DateTime(day.year, day.month, day.day)] ?? [];
              if (matchedEvents.isEmpty) {
                return null;
              }
              return Padding(
                padding: const EdgeInsets.only(bottom: 6, right: 6),
                child: Container(
                  width: 16,
                  height: 16,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.color007aff,
                    shape: BoxShape.rectangle,
                  ),
                  child: Text(
                    "${matchedEvents.length}",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              );
            }),
          )
        : EasyTheme(
            data: EasyTheme.of(context).copyWith(currentDayBackgroundColor:
                WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.color41606B;
              }
              return AppColors.whiteColor;
            }), dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.color41606B;
              }
              return AppColors.whiteColor;
            })),
            child: EasyDateTimeLinePicker(
              firstDate: DateTime.utc(2010, 1, 1),
              lastDate: DateTime.utc(2030, 1, 1),
              focusedDate: selectedDay,
              onDateChange: (date) {
                setState(() {
                  selectedDay = date;
                });
              },
              headerOptions: HeaderOptions(headerType: HeaderType.none),
              selectionMode: SelectionMode.autoCenter(),
            ),
          );
  }
}
