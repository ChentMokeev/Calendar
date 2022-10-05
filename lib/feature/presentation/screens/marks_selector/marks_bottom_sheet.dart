import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_calendar/core/resources/calendar_colors.dart';
import 'package:test_calendar/feature/presentation/screens/meeting_add/vm.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

class MarkBottomSheet extends StatelessWidget {
  const MarkBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.read<NewMeetingVM>();

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
            onTap: () {
              Navigator.of(context).pop();
              vm.isButtonAvalable();
            },
          ),
        ),
      ),
      // floatingActionButton: MyFloatingActBtn(
      //   persentOfHeight: 65,
      //   modal: Scaffold(
      //     appBar: AppBar(
      //       automaticallyImplyLeading: false,
      //       title: Text(context.lang.markCreation),
      //       // actions: [
      //       //   IconButton(
      //       //     onPressed: () => const CloseButton(),
      //       //     icon: const Icon(Icons.close),
      //       //   ),
      //       // ],
      //     ),
      //     body: Padding(
      //       padding: const EdgeInsets.all(16),
      //       child: Column(
      //         // crossAxisAlignment: CrossAxisAlignment.start,
      //         children: const [
      //           DefaultTextField(title: 'Название'),
      //           Align(
      //             alignment: Alignment.centerLeft,
      //             child: Text(
      //               'Цвет',
      //               style: CalendarTextStyles.fSize14Weight300Gray,
      //             ),
      //           ),
      //           SizedBox(height: 16),
      //           TableOfColors(),
      //           Spacer(),
      //           SaveButton(),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
