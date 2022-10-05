import 'package:flutter/material.dart';

import 'package:test_calendar/feature/presentation/widgets/my_radio_listtile.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

class RepeatBottomSheet extends StatefulWidget {
  const RepeatBottomSheet({Key? key}) : super(key: key);

  @override
  State<RepeatBottomSheet> createState() => _RepeatBottomSheetState();
}

class _RepeatBottomSheetState extends State<RepeatBottomSheet> {
  int _selectedIndex = 0;
  final variants = [
    'Нет',
    'Ежедневно',
    'По будням (Пн-Пт)',
    'Еженедельно',
    'Ежемесячно',
    'Ежемесячно',
    'Ежегодно',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context).repeating),
      ),
      body: Column(
        children: List.generate(
          variants.length,
          (index) => MyRadioListTile(
            titleText: variants[index],
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
