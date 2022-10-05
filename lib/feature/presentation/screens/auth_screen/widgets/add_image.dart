import 'package:flutter/material.dart';
import 'package:test_calendar/core/resources/calendar_colors.dart';
import 'package:test_calendar/core/resources/calendar_text_styles.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

class AddImage extends StatelessWidget {
  const AddImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: CalendarColors.addImage,
      radius: 44,
      child: Text(
        L10n.of(context).selectPhoto,
        maxLines: 2,
        textAlign: TextAlign.center,
        style: CalendarTextStyles.fSize14Weight400Blue,
      ),
    );
  }
}
