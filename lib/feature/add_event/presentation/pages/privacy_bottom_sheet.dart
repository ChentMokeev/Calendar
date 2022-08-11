import 'package:flutter/material.dart';

import 'package:test_calendar/feature/add_event/presentation/widgets/my_radio_listtile.dart';

class PrivacyBottomSheet extends StatefulWidget {
  const PrivacyBottomSheet({Key? key}) : super(key: key);

  @override
  State<PrivacyBottomSheet> createState() => _PrivacyBottomSheetState();
}

class _PrivacyBottomSheetState extends State<PrivacyBottomSheet> {
  int _selectedIndex = 0;
  final List<String> _variants = [
    'Доступно всем',
    'Скрыть от всех',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Приватность'),
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