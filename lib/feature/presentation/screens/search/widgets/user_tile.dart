part of '../search_page.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        child: Image.asset(AppImages.defaultUserPic),
      ),
      title: Text(user.fullName ?? ''),
      subtitle: Text(user.positionName ?? ''),
    );
  }
}
