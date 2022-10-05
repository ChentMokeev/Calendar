import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:test_calendar/core/locale.dart';
import 'package:test_calendar/core/resources/calendar_text_styles.dart';
import 'package:test_calendar/feature/presentation/screens/location_selector/location_bottom_sheet.dart';
import 'package:test_calendar/feature/presentation/screens/marks_selector/marks_bottom_sheet.dart';
import 'package:test_calendar/feature/presentation/screens/meeting_add/vm.dart';
import 'package:test_calendar/feature/presentation/screens/members_selector/members_bottom_sheet.dart';
import 'package:test_calendar/feature/presentation/screens/privacy_selector/privacy_bottom_sheet.dart';
import 'package:test_calendar/feature/presentation/screens/repeat_selector/repeat_bottom_sheet.dart';
import 'package:test_calendar/feature/presentation/widgets/save_button.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

part 'widgets/default_selector.dart';
part 'widgets/member_selector.dart';
part 'widgets/time_selector.dart';

class ListOfSelectors extends StatelessWidget {
  const ListOfSelectors({
    Key? key,
    this.closeIt,
  }) : super(key: key);

  final Function()? closeIt;

  Widget myDevider() => const Divider(indent: 16, endIndent: 16);

  @override
  Widget build(BuildContext context) {
    final vm = context.read<NewMeetingVM>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 8),
        Row(
          children: [
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: closeIt,
            ),
            const SizedBox(width: 8),
          ],
        ),
        Text(
          context.locale.newMeeting,
          style: CalendarTextStyles.fSize18Weight600,
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  style: CalendarTextStyles.fSize16Weight600Blue,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: context.locale.nameing,
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const TimeSelector(),
              myDevider(),
              DefaultSelector(
                icon: SvgPicture.asset('assets/svg/Repeat.svg'),
                title: context.locale.repeating,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RepeatBottomSheet(),
                  ),
                ),
              ),
              myDevider(),
              MembersSelector(
                onPress: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MembersBottomSheet(),
                  ),
                ),
              ),
              myDevider(),
              DefaultSelector(
                icon: SvgPicture.asset('assets/svg/Location.svg'),
                title: context.locale.location,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LocationBottomSheet(),
                  ),
                ),
              ),
              myDevider(),
              DefaultSelector(
                icon: SvgPicture.asset('assets/svg/Hash.svg'),
                title: context.locale.myMarks,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MarkBottomSheet(),
                  ),
                ),
              ),
              myDevider(),
              DefaultSelector(
                icon: SvgPicture.asset('assets/svg/Lock.svg'),
                title: context.locale.privacy,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyBottomSheet(),
                  ),
                ),
              ),
              myDevider(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ValueListenableBuilder(
            valueListenable: vm.isFullFilled,
            builder: (context, _, __) {
              return SaveButton(
                isFullFilled: vm.isFullFilled.value,
                onPress: () {},
              );
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
