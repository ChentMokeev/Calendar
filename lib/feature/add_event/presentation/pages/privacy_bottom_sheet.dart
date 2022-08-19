import 'package:flutter/material.dart';

import 'package:test_calendar/feature/add_event/presentation/widgets/my_radio_listtile.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

class PrivacyBottomSheet extends StatefulWidget {
  const PrivacyBottomSheet({Key? key}) : super(key: key);

  @override
  State<PrivacyBottomSheet> createState() => _PrivacyBottomSheetState();
}

class _PrivacyBottomSheetState extends State<PrivacyBottomSheet> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final locale = L10n.of(context);
    final _variants = [locale.avalable, locale.hide];
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context).privacy),
      ),
      body: Column(
        children: List.generate(
          _variants.length,
          (index) => MyRadioListTile(
            titleText: _variants[index],
            index: index,
            currentIndex: _selectedIndex,
            onTap: () {
              _selectedIndex = index;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
