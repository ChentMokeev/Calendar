import 'package:flutter/material.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

class LocationBottomSheet extends StatelessWidget {
  const LocationBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(L10n.of(context).location)),
    );
  }
}