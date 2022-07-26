part of '../pages/add_event_bottom_sheet.dart';

class TimeSelector extends StatelessWidget {
  const TimeSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      horizontalTitleGap: 0,
      leading: Icon(
        Icons.access_time,
        color: Colors.blue,
      ),
      title: Text('02.02.2022, среда'),
    );
  }
}
