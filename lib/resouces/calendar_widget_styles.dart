import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:test_calendar/resouces/calendar_colors.dart';

class CalendarWidgetStyles {
  static const calendarStyle = CalendarStyle(
    defaultTextStyle: TextStyle(color: Colors.white, fontSize: 16),
    weekendTextStyle: TextStyle(color: Colors.white, fontSize: 16),
    todayDecoration: BoxDecoration(
      color: CalendarColors.dayMarkBlue,
      shape: BoxShape.circle,
    ),
  );

  static const calendarHeaderStyle = HeaderStyle(
    titleCentered: true,
    formatButtonVisible: false,
    titleTextStyle: TextStyle(
      color: Colors.white,
    ),
    decoration: BoxDecoration(color: CalendarColors.txtBlue),
    leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
    rightChevronIcon: Icon(Icons.chevron_right, color: Colors.white),
  );
}
