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
      leading: currentIndex == index
          ? CircleAvatar(
              backgroundColor: Colors.blue,
              radius: MediaQuery.of(context).size.width * .0128)
          : const SizedBox(),
      title: Text(titleText),
    );
  }
}
