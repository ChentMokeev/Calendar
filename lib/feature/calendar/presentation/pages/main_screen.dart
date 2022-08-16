import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/add_event_bottom_sheet.dart';
import 'package:test_calendar/resouces/calendar_colors.dart';
import 'package:test_calendar/resouces/calendar_text_styles.dart';
import 'package:test_calendar/resouces/calendar_widget_styles.dart';
import 'package:test_calendar/utils/utils.dart';

part '../widgets/event_card.dart';
part '../widgets/my_calendar_widget.dart';
part '../widgets/my_floating_act_btn.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final kDefaultPadding = screenSize.width * .044;
    return SafeArea(
      child: Scaffold(
        backgroundColor: CalendarColors.txtBlue,
        floatingActionButton: const MyFloatingActBtn(),
        body: Column(
          children: [
            const MyCalendarWidget(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: ListView.separated(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    bottom: kDefaultPadding / 2,
                  ),
                  itemBuilder: (context, index) => Row(
                    children: [
                      Text(
                        '${index + 9}:00',
                        style: CalendarTextStyles.fSize14Weight400Blue
                            .copyWith(color: Colors.black),
                      ),
                      SizedBox(width: kDefaultPadding / 2),
                      const Expanded(child: EventCard()),
                    ],
                  ),
                  separatorBuilder: (context, _) => const Divider(height: 1),
                  itemCount: 9,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}