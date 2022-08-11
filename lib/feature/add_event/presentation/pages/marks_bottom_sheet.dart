import 'package:flutter/material.dart';
import 'package:test_calendar/resouces/calendar_colors.dart';
import 'package:test_calendar/routes/routes.dart';
import 'package:test_calendar/utils/utils.dart';

class MarkBottomSheet extends StatelessWidget {
  const MarkBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Мои метки')),
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
