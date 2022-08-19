import 'package:flutter/material.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * .075,
      child: ElevatedButton(
        child: Text(L10n.of(context).save),
        onPressed: () {},
      ),
    );
  }
}
