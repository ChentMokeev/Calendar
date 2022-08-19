import 'package:flutter/material.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';
import 'package:test_calendar/resouces/calendar_colors.dart';
import 'package:test_calendar/routes/routes.dart';

class MarkBottomSheet extends StatelessWidget {
  const MarkBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = L10n.of(context);
    final namesOfMarks = [
      locale.work,
      locale.personal,
      locale.event,
      locale.project,
    ];
    return Scaffold(
      appBar: AppBar(title: Text(locale.myMarks)),
      body: Column(
        children: List.generate(
          namesOfMarks.length,
          (index) => ListTile(
            leading: CircleAvatar(
                backgroundColor: CalendarColors.marks[index], radius: 12),
            title: Text(namesOfMarks[index]),
            onTap: () => context.router.pop(),
          ),
        ),
      ),
    );
  }
}
