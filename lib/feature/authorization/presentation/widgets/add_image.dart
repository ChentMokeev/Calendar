import 'package:flutter/material.dart';
import 'package:test_calendar/resouces/calendar_colors.dart';

import 'package:test_calendar/resouces/calendar_text_styles.dart';

class AddImage extends StatelessWidget {
  const AddImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: CalendarColors.addImage,
      radius: 44,
      child: Text(
        'Добавьте\n'
        'фото',
        maxLines: 2,
        textAlign: TextAlign.center,
        style: CalendarTextStyles.fSize14Weight400Blue,
      ),
    );
  }
}
