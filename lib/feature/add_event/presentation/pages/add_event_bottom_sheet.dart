import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/location_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/marks_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/members_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/privacy_bottom_sheet.dart';
import 'package:test_calendar/feature/add_event/presentation/widgets/save_button.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';
import 'package:test_calendar/resouces/calendar_text_styles.dart';
import 'package:test_calendar/routes/routes.dart';

part '../widgets/default_selector.dart';
part '../widgets/member_selector.dart';
part '../widgets/time_selector.dart';

Widget myDevider() => const Divider(indent: 16, endIndent: 16);

class AddEventBottomSheet extends StatelessWidget {
  const AddEventBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.9625,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: Navigator(
          onGenerateRoute: (_) => MaterialPageRoute(
            builder: (context2) => ListOfSelectors(
              closeIt: () => Navigator.of(context).pop(),
            ),
          ),
        ),
      ),
    );
  }
}

class ListOfSelectors extends StatelessWidget {
  const ListOfSelectors({
    Key? key,
    this.closeIt,
  }) : super(key: key);

  final Function()? closeIt;

  @override
  Widget build(BuildContext context) {
    final locale = L10n.of(context);
    // final screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
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
            locale.newMeeting,
            style: CalendarTextStyles.fSize18Weight600,
            textAlign: TextAlign.center,
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 48),
                hintText: locale.nameing,
                border: InputBorder.none),
          ),
          myDevider(),
          const TimeSelector(),
          myDevider(),
          DefaultSelector(
            icon: SvgPicture.asset('assets/svg/Repeat.svg'),
            title: locale.repeating,
            onTap: () => context.router.push(const RepeatBottomSheetRoute()),
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
            title: locale.location,
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
            title: locale.myMarks,
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
            title: locale.privacy,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PrivacyBottomSheet(),
              ),
            ),
          ),
          myDevider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SaveButton(),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
