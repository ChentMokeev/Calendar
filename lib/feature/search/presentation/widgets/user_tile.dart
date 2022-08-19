part of '../pages/search_page.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: const CircleAvatar(
        radius: 20,
        child: FlutterLogo(),
        backgroundColor: Colors.white,
      ),
      title: const Text('Jotaro Kujo'),
      subtitle: const Text('Star Platinum'),
    );
  }
}