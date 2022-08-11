import 'package:flutter/material.dart';
import 'package:test_calendar/resouces/calendar_colors.dart';

class CalendarTextStyles {
  static const TextStyle fSize15White = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontFamily: 'Noto Serif Malayalam',
  );

  static const TextStyle fSize14Weight300Gray = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: Color(0xff2e2e2e),
    height: 1.7,
  );

  static const TextStyle fSize14Weight400Blue = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: CalendarColors.txtBlue,
    height: 1.17,
  );

  static const TextStyle fSize16Weight600White = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    height: 1.17,
  );
  static const TextStyle fSize16Weight600Blue = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: CalendarColors.txtBlue,
    height: 1.32,
  );
  static const TextStyle fSize15Weight400 = TextStyle(
    fontFamily: 'Roboto',
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle fSize18Weight600 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.21,
  );
}
