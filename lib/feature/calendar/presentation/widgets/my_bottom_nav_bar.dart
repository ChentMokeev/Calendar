part of '../pages/main_screen.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
    // required this.index,
    // required this.onTap,
  }) : super(key: key);

  // final int index;
  // final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Календарь'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined), label: 'Сообщения'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: 'Поиск'),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          label: 'Профиль',
        ),
      ],
    );
  }
}
