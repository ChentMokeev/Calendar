import 'package:flutter/material.dart';

class MyRadioListTile extends StatelessWidget {
  const MyRadioListTile({
    Key? key,
    required this.titleText,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final String titleText;
  final int index;
  final int currentIndex;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      onTap: onTap,
      title: Row(
        children: [
          currentIndex == index
              ? const CircleAvatar(backgroundColor: Colors.blue, radius: 5)
              : const SizedBox(width: 11),
          const SizedBox(width: 16),
          Text(titleText),
        ],
      ),
    );
  }
}
