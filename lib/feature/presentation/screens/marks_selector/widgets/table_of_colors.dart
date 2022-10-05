import 'package:flutter/material.dart';
import 'package:test_calendar/core/extensions/context_extension.dart';
import 'package:test_calendar/core/resources/calendar_colors.dart';

class TableOfColors extends StatelessWidget {
  const TableOfColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: const FlexColumnWidth(),
      children: [
        TableRow(
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CircleAvatar(
                radius: context.height * .03,
                backgroundColor: CalendarColors.markVariants[index],
              ),
            ),
          ),
        ),
        TableRow(
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CircleAvatar(
                radius: context.height * .03,
                backgroundColor: CalendarColors.markVariants[index + 5],
              ),
            ),
          ),
        ),
        TableRow(
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CircleAvatar(
                radius: context.height * .03,
                backgroundColor: CalendarColors.markVariants[index + 10],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
