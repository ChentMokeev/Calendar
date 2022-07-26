part of '../pages/add_event_bottom_sheet.dart';

class DefaultSelector extends StatelessWidget {
  const DefaultSelector({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.mark,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String? mark;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      leading: Icon(icon, color: Colors.blue),
      title: Row(
        children: [
          Text(title),
          const Spacer(),
          if (mark != null) Text(mark!),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.arrow_forward_ios),
        onPressed: onTap,
      ),
      // onTap: onTap,
    );
  }
}
