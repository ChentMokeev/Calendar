part of '../search_page.dart';

class MeetingTile extends StatelessWidget {
  const MeetingTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.green.shade100,
      ),
      title: const Text('Единое окно (регистрации обон.)'),
    );
  }
}
