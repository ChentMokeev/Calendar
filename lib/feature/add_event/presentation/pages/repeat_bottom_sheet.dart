import 'package:flutter/material.dart';

import 'package:test_calendar/feature/add_event/presentation/widgets/my_radio_listtile.dart';

class RepeatBottomSheet extends StatefulWidget {
  const RepeatBottomSheet({Key? key}) : super(key: key);

  @override
  State<RepeatBottomSheet> createState() => _RepeatBottomSheetState();
}

class _RepeatBottomSheetState extends State<RepeatBottomSheet> {
  int _selectedIndex = 0;
  final List<String> _variants = [
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
        title: const Text('Повторять'),
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
