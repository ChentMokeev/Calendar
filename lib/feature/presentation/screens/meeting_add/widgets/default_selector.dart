part of '../meeting_add.dart';

class DefaultSelector extends StatelessWidget {
  const DefaultSelector({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.mark,
  }) : super(key: key);

  final Widget icon;
  final String title;
  final String? mark;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      leading: icon,
      title: Row(
        children: [
          Text(title),
          const Spacer(),
          if (mark != null) Text(mark!),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}
