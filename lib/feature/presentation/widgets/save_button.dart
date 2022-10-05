import 'package:flutter/material.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key,
    this.isFullFilled = false,
    this.isLoading = false,
    required this.onPress,
  }) : super(key: key);

  final bool isFullFilled;
  final bool isLoading;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * .07,
      child: ElevatedButton(
        onPressed: isLoading
            ? null
            : isFullFilled
                ? onPress
                : null,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(L10n.of(context).save),
      ),
    );
  }
}
