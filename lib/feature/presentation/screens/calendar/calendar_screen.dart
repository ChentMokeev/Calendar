import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:test_calendar/core/extensions/context_extension.dart';
import 'package:test_calendar/core/resources/calendar_colors.dart';
import 'package:test_calendar/core/resources/calendar_text_styles.dart';
import 'package:test_calendar/core/resources/calendar_widget_styles.dart';
import 'package:test_calendar/feature/presentation/screens/meeting_add/meeting_add.dart';
import 'package:test_calendar/feature/presentation/screens/navigation/vm.dart';
import 'package:test_calendar/feature/presentation/widgets/app_modals.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';
import 'package:test_calendar/routes/routes.dart';
import 'package:test_calendar/utils/utils.dart';

part 'widgets/event_card.dart';
part 'widgets/my_calendar_widget.dart';
part 'widgets/my_floating_act_btn.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final kDefaultPadding = screenSize.width * .044;
    return SafeArea(
      child: Scaffold(
        backgroundColor: CalendarColors.txtBlue,
        floatingActionButton: MyFloatingActBtn(
          persentOfHeight: 96,
          modal: ListOfSelectors(closeIt: () {
            context.router.pop();
            context.read<NavigationVM>().hideBottomBar(false);
          }),
        ),
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
                    left: context.defaultPadding,
                    right: context.defaultPadding,
                    bottom: context.defaultPadding / 2,
                  ),
                  itemBuilder: (context, index) => Row(
                    children: [
                      Text(
                        '${index + 9}:00',
                        style: CalendarTextStyles.fSize14Weight400Blue
                            .copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      SizedBox(width: kDefaultPadding / 2),
                      Flexible(
                        flex: 8,
                        child: GestureDetector(
                          child: const EventCard(),
                          onTap: () {
                            context.router.push(
                              const MeetingMessagePageRoute(),
                            );
                            context.read<NavigationVM>().hideBottomBar(true);
                          },
                        ),
                      ),
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
