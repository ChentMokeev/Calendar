part of '../pages/add_event_bottom_sheet.dart';

class MembersSelector extends StatelessWidget {
  const MembersSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      leading: const Icon(Icons.person_outline, color: Colors.blue),
      title: const Text('Участники'),
      trailing: SizedBox(
        height: 32,
        width: 32,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(0)),
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
